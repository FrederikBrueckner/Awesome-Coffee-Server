/*--------------------------------------------------
HTTP 1.1 Webserver for ESP8266 
for ESP8266 adapted Arduino IDE
controlling relay and TC temperature probe for simple
coffee machine start up.
Power toggle via webinterface or push button.

by Frederik Brückner
mail: coffeeserver@prdctdsgn.de
Mai 2017

Based on a sketch from Stefan Thesen

Does HTTP 1.1 with defined connection closing.
Reconnects in case of lost WiFi.
Handles empty requests in a defined manner.
Handle requests for non-exisiting pages correctly.

Serial used for debugging only. Search and replace
//Serial --> Serial
--------------------------------------------------*/

#include <ESP8266WiFi.h>
#include <max6675.h>
#include <SPI.h>
#include "credentials.h"

char *relayState = "ausgeschaltet.";
char *pwrButton = "MAIN_ON\"><button id=\"button_on\" style=\"font-size:100%;background-color:#EFE;border:1pt dashed black\">einschalten"; // Variable for html button
const char *relVersion = "0.1.2"; // Release version numbering

unsigned long ulReqcount = 0; // Http request counter
unsigned long ulReconncount = 0; // Http reconnect counter

int thermoDO = D7; // Thermocouple data out
int thermoCS = D6; // Thermocouple chip select
int thermoCLK = D5; // Thermocouple clock
int mainRelay = D0; // GPIO16 switch relay
int manInput = D3; // Manual input button

volatile byte state = LOW; // Power switch state

// Create an instance of the server on Port 80
WiFiServer server(80);

// Initialize MAX6675 TC
MAX6675 thermocouple;

void setup() 
{
  // Prepare Pin D0 (GPIO 16) relay switch
  pinMode(mainRelay, OUTPUT);
  digitalWrite(mainRelay, state);

  // Prepare Pin D8 (internal pullup) manual input button
  pinMode(manInput, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(manInput), pwrSwitch, FALLING);
    
  // Start serial
  //Serial.begin(9600);
  //delay(1);
  
  // Initate connect
  WiFi.mode(WIFI_STA);
  WiFiStart();

  // Setup thermocoupler
  thermocouple.begin(thermoCLK, thermoCS, thermoDO);
  delay(500); //wait for MAX6675
}

void pwrSwitch() // Momentary push button interrupt handler with software debounce
{
 static unsigned long last_interrupt_time = 0;
 unsigned long interrupt_time = millis();
 // If interrupts come faster than 200ms, assume it's a bounce and ignore
 if (interrupt_time - last_interrupt_time > 200)
 {
   state = !state;
   relayStatus();
 }
 last_interrupt_time = interrupt_time;
}

void relayStatus() // Check state and switch relay
{
  if(state == LOW)
    {
      relayState = "ausgeschaltet.";
      pwrButton = "MAIN_ON\"><button id=\"button_on\" style=\"font-size:100%;background-color:#EFE;border:1pt dashed black\">einschalten";
      digitalWrite(mainRelay, state);
      return;
   }

  else if(state == HIGH)
    {
      relayState = "eingeschaltet.";
      pwrButton = "MAIN_OFF\"><button id=\"button_off\" style=\"font-size:100%;background-color:#FEE;border:1pt dashed black\">ausschalten";
      digitalWrite(mainRelay, state);
      return;
   }
}

void WiFiStart() // Connect to WiFi network
{
  ulReconncount++;
  
  //Serial.println();
  //Serial.println();
  //Serial.print("Connecting to ");
  //Serial.println(ssid);
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    //Serial.print(".");
  }
  //Serial.println("");
  //Serial.println("WiFi connected");
  
  // Start the server
  server.begin();
  //Serial.println("Server started");

  // Print the IP address
  //Serial.println(WiFi.localIP());
}

void loop() 
{
  // Check if WLAN is connected
  if (WiFi.status() != WL_CONNECTED)
  {
    WiFiStart();
  }
  
  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) 
  {
    return;
  }
  
  // Wait until the client sends some data
  //Serial.println("new client");
  unsigned long ultimeout = millis()+250;
  while(!client.available() && (millis()<ultimeout) )
  {
    delay(1);
  }
  if(millis()>ultimeout) 
  { 
    //Serial.println("client connection time-out!");
    return;
  }
  
  // Read the first line of the request
  String sRequest = client.readStringUntil('\r');
  // Serial.println(sRequest);
  client.flush();
  
  // Stop client, if request is empty
  if(sRequest=="")
  {
    //Serial.println("empty request! - stopping client");
    client.stop();
    return;
  }
  
  // Get path; End of path is either space or ?
  // Syntax is e.g. GET /?pin=MAIN_ON HTTP/1.1
  String sPath="",sParam="", sCmd="";
  String sGetstart="GET ";
  int iStart,iEndSpace,iEndQuest;
  iStart = sRequest.indexOf(sGetstart);
  if (iStart>=0)
  {
    iStart+=+sGetstart.length();
    iEndSpace = sRequest.indexOf(" ",iStart);
    iEndQuest = sRequest.indexOf("?",iStart);
    
    // Are there parameters?
    if(iEndSpace>0)
    {
      if(iEndQuest>0)
      {
        // Parameters present
        sPath  = sRequest.substring(iStart,iEndQuest);
        sParam = sRequest.substring(iEndQuest,iEndSpace);
      }
      else
      {
        // NO parameters present
        sPath  = sRequest.substring(iStart,iEndSpace);
      }
    }
  }
  
  ///////////////////////////////////////////////////////////////////////////////
  // Output parameters to serial, you may connect e.g. an Arduino and react on it
  ///////////////////////////////////////////////////////////////////////////////
  if(sParam.length()>0)
  {
    int iEqu=sParam.indexOf("=");
    if(iEqu>=0)
    {
      sCmd = sParam.substring(iEqu+1,sParam.length());
      //Serial.println(sCmd);
    }
  }
  
  
  ///////////////////////////
  // Format the html response
  ///////////////////////////
  String sResponse,sHeader;
  
  ////////////////////////////
  // 404 for non-matching path
  ////////////////////////////
  if(sPath!="/")
  {
    sResponse="<html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL was not found on this server.</p></body></html>";
    
    sHeader  = "HTTP/1.1 404 Not found\r\n";
    sHeader += "Content-Length: ";
    sHeader += sResponse.length();
    sHeader += "\r\n";
    sHeader += "Content-Type: text/html\r\n";
    sHeader += "Connection: close\r\n";
    sHeader += "\r\n";
  }
  ///////////////////////
  // Format the html page
  ///////////////////////
  else
  {
    ulReqcount++;
    sResponse  = "<!DOCTYPE html><head><title>Awesome CoffeeServer v"; 
    sResponse += relVersion;
    sResponse += "</title><meta charset=\"UTF-8\"><meta http-equiv=\"refresh\" content=\"5; URL=/\" ></head>"; // Auto refresh
    sResponse += "<body><BLOCKQUOTE><font color=\"#000000\"><body bgcolor=\"#FFFFFF\"><font face=\"Arial\", sans-serif>";
    sResponse += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=yes\">";
    sResponse += "<h1>Awesome CoffeeServer v";
    sResponse += relVersion;
    sResponse += "</h1>Der Hauptschalter schaltet die Espressomaschine ein.<BR>";
    sResponse += "<FONT SIZE=+1>";
    sResponse += "<p><BLOCKQUOTE style=\"font-weight:bold\">Hauptschalter</BLOCKQUOTE><BLOCKQUOTE><a href=\"?pin=";
    sResponse += pwrButton;
    sResponse += "</button></BLOCKQUOTE></a></p><p><BLOCKQUOTE>Das Relais ist ";
    sResponse += relayState;
    sResponse += "</BLOCKQUOTE></a></p><p><BLOCKQUOTE>Aktuelle Temperatur</BLOCKQUOTE></p><p><BLOCKQUOTE>";
    sResponse += thermocouple.readCelsius();
    sResponse += "°C</BLOCKQUOTE><FONT SIZE=-1></p>";
    //////////////////////
    // React on parameters
    //////////////////////
    if (sCmd.length()>0)
    {
      // Write received command to html page
      sResponse += "Kommando: " + sCmd + "<BR>";
      
      // Switch power state
      if(sCmd.indexOf("MAIN_ON")>=0)
      {
        state = HIGH;
      }
      else if(sCmd.indexOf("MAIN_OFF")>=0)
      {
        state = LOW;
      }
     relayStatus();
     }
         
    sResponse += "<FONT SIZE=-2>";
    sResponse += "<BR>Aufrufz&auml;hler="; 
    sResponse += ulReqcount;
    sResponse += " - Verbindungsz&auml;hler="; 
    sResponse += ulReconncount;
    sResponse += "<BR>";
    sResponse += "Frederik Br&uuml;ckner 2017-03-20<BR>";
    sResponse += "</BLOCKQUOTE></body></html>";
    
    sHeader  = "HTTP/1.1 200 OK\r\n";
    sHeader += "Content-Length: ";
    sHeader += sResponse.length();
    sHeader += "\r\n";
    sHeader += "Content-Type: text/html\r\n";
    sHeader += "Connection: close\r\n";
    sHeader += "\r\n";
  }
  
  // Send the response to the client
  client.print(sHeader);
  client.print(sResponse);
  
  // and stop the client
  client.stop();
  //Serial.println("Client disonnected");
  
}
