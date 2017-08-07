# Awesome CoffeeServer
Small ESP8266 based Wifi webserver to remotely start up a coffee machine via web interface or momentary push button

Install ESP8266 Arduino core from https://github.com/esp8266/Arduino

Webserver based on sketch by Stefan Thesen
https://blog.thesen.eu/stabiler-http-1-1-wlan-webserver-mit-dem-esp8266-microcontroller/

Physical momentary push button on software debounced interrupt (do not use pin 8 --> default hw pull down!)