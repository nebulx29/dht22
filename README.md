## Description
dht22 is small utility that reads a DHT22 sensor (DHT11 should work as well, but is untested) and outputs its value to the commandline. 

## Usage
<pre>
Usage: dht22 c|f|h pin
  where c reads temperature in degree celsius
        f reads temperature in degree fahrenheit
        h reads humidity
        pin is the GPIO pin used for the DHT11 data pin in wiringPi numbering
</pre>

## Download

Simply clone this repository to any directory you like
<pre>
$ git clone https://github.com/nebulx29/dht22/
</pre>
if you don't have GIT available, install it via
<pre>
$ sudo apt-get install git-core
</pre>

## Prerequisites

In order to compile the utility you need GCC, Make and the <a href="http://wiringpi.com/">wiringPi</a> libraries. If you haven't already done so, you can install it via
<pre>
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install build-essential wiringpi
</pre>
<i>Remark:</i> As i haven't testet it from a fresh build yet, please let me know in case i forgot something

