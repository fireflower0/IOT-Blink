# IOT-Blink

RaspberryPi is used as a Web server, and GPIO is controlled from a Web browser.

## Description

Control the LED with the Submit button on the web browser.

## Circuit diagram

![CircuitDiagram](https://github.com/fireflower0/IOT-Blink/blob/master/img/blink_circuit.png)

## DEMO



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
