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

## Connecting the Sensor and GPIO numbering

Connect the DHT22 sensor to VCC, GND and DATA to a free GPIO PIN. 
The dht22 utiltity uses the <b>wiringPi</b> GPIO numbering scheme.
In the subsequent examples GPIO 22 (wiringPi) ist used. On Raspberry Pi 3 this GPIO 22 (wiringPi) equals physical Pin #31 as well as GPIO 6 in BCM numbering.

<pre>
$ gpio readall
 +-----+-----+---------+------+---+---Pi 3---+---+------+---------+-----+-----+
 | BCM | wPi |   Name  | Mode | V | Physical | V | Mode | Name    | wPi | BCM |
 +-----+-----+---------+------+---+----++----+---+------+---------+-----+-----+
...
 |   6 |  22 | GPIO.22 |   IN | 1 | 31 || 32 | 0 | IN   | GPIO.26 | 26  | 12  |
 ...
 +-----+-----+---------+------+---+----++----+---+------+---------+-----+-----+
 | BCM | wPi |   Name  | Mode | V | Physical | V | Mode | Name    | wPi | BCM |
 +-----+-----+---------+------+---+---Pi 3---+---+------+---------+-----+-----+
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
