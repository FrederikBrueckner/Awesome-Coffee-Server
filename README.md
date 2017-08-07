# Awesome-Coffee-Server
ESP8266 based webserver, Coffee machine remote control

This is a work-in-progress project. The first prototype has been running stable for a couple of months in my Gaggia Classic espresso maker. The prototype is built on vero board. The small ESP8266 based webserver delivers a status website with machine state and current boiler temperature. The coffee machine can be switched on and off via a relay, remote controlled through the website or via a tactile button on the machine itself to keep the original functionality.
The firmware is (and will be) written in Arduino, but feel free to build your own in the Lua based NodeMCU environment.


Current state:
— Schematics and board layout not finished
— Firmware v0.1.2 working but only with rudimentary features


Things that will be implemented in future versions:

— access point mode with wifi manager
— MAX31865 based circuit for PTC element and PID functionality
— rewritten webserver with file system
— software based real-time clock + sync via NTP

All hardware, schematics, design documentation, firmware and additional files will be released as an Open Source Hardware Project under the MIT license.