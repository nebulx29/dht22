# dht22
dht22 is small utility that reads a DHT22 sensor (DHT11 should work as well, but is untested) and outputs its value to the commandline. 
<pre>
Usage: dht22 c|f|h pin
  where c reads temperature in degree celsius
        f reads temperature in degree fahrenheit
        h reads humidity
        pin is the GPIO pin used for the DHT11 data pin in wiringPi numbering
</pre>
