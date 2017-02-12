## Description
dht22 is small utility that reads a DHT22 sensor (DHT11 should work as well, but is untested) and outputs its value to the commandline. 

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

The Makefile installs the binary per default to `/home/pi/bin/dht22`. If your prefer otherwise change the path in the file `dht22\Makefile`.

If you don't have a `home/pi/bin/` directory yet, create it with the command `mkdir /home/pi/bin`. 

## Compile and install

<pre>
$ mkdir /home/pi/bin
$ cd dht22
$ make install
</pre>

## Usage
<pre>
Usage: dht22 c|f|h pin
  where c reads temperature in degree celsius
        f reads temperature in degree fahrenheit
        h reads humidity
        pin is the GPIO pin used for the DHT11 data pin in wiringPi numbering
</pre>
Here is an example test run:
<pre>
$ cd /home/pi/bin
$ sudo ./dht22 c 22
25.1
$ sudo ./dht22 f 22
77.2
$ sudo ./dht22 h 22
43.0
</pre>
