# IOT-Blink

RaspberryPi is used as a Web server, and GPIO is controlled from a Web browser.

## Description

Control the LED with the Submit button on the web browser.

## Circuit diagram

![CircuitDiagram](https://github.com/fireflower0/IOT-Blink/blob/master/img/blink_circuit.png)

## DEMO

LED blink.

![DEMO01](https://github.com/fireflower0/IOT-Blink/blob/master/img/led-on.png)  
![DEMO02](https://github.com/fireflower0/IOT-Blink/blob/master/img/led-off.png)  

Demo image with each Web browser.

- Windows7 Internet Explorer

![DEMO03](https://github.com/fireflower0/IOT-Blink/blob/master/img/web-site-led-on.png)  
![DEMO04](https://github.com/fireflower0/IOT-Blink/blob/master/img/web-site-led-off.png)  

- windows10 Edge

![DEMO05](https://github.com/fireflower0/IOT-Blink/blob/master/img/web-site-edge-led-on.png)  
![DEMO06](https://github.com/fireflower0/IOT-Blink/blob/master/img/web-site-edge-led-off.png)  

- Android google chrome

![DEMO07](https://github.com/fireflower0/IOT-Blink/blob/master/img/Screenshot_20171005-211545.png)  
![DEMO08](https://github.com/fireflower0/IOT-Blink/blob/master/img/Screenshot_20171005-211601.png)  

## Requirement

- Common Lisp (SBCL)

Please download the following library to "~/quicklisp/local-projects/".

- ASDF

    $ git clone https://github.com/fare/asdf.git  

- CFFI

    $ git clone https://github.com/cffi/cffi.git  

- Clack

    $ git clone https://github.com/unbit/clack.git  

## Usage

Execute it with the following command.
Note: Quicklisp is required to run.

    $ sbcl --load iot-blink.lisp

## Installation

    $ git clone https://github.com/fireflower0/IOT-Blink.git

## Author

[fireflower0](https://twitter.com/fireflower0)

## License

[MIT](https://choosealicense.com/licenses/mit/)
