;; Load packages
(load "packages.lisp" :external-format :utf-8)

(in-package :cl-iot)

;; Load wrapper API
(load "libwiringPi.lisp" :external-format :utf-8)

;; Define GPIO11(pin 23) with the name "+pin+"
(defconstant +pin+ 11)

;; GPIO pin mode
(defconstant +output+ 1)
(defconstant +input+  0)

;; GPIO level
(defconstant +high+ 1)
(defconstant +low+  0)

;; Initialize GPIO
(defun init-gpio ()
  (wiringPiSetupGpio)              ; Initialize GPIO
  (pinMode +pin+ +output+))        ; Set GPIO11 to output mode

;; Blink LED
(defun blink (status)
  (if (string= status "on")
      (digitalWrite +pin+ +high+)  ; Lights the LED with GPIO set to 3.3V
      (digitalWrite +pin+ +low+))) ; Set GPIO to 0V and turn off LED

;; Create Web page
(defun web-page ()
  (list
   (markup
    (html
     (:head
      (:meta :content "text/html" :charset "UTF-8")
      (:title "Web Application with Common Lisp and RaspberryPi"))
     (:body
      (:p "LED Blink") (:br)
      (:form :method "post" :action "/post" :target "iframe"
             (:input :type "submit" :name "led-blink" :value "on"))
      (:form :method "post" :action "/post" :target "iframe"
             (:input :type "submit" :name "led-blink" :value "off"))
      (:iframe :name "iframe"))))))

;; Create index
(defun index (env)
  (declare (ignore env))
  `(200
    (:content-type "text/html")
    ,(web-page)))

;; POST process
(defun post (env)
  (let ((req (make-request env))
	status)
    `(200
      (:content-type "text/plain")
      ,(list
	 (setf status (body-parameter req "led-blink"))
	 (blink status)
	 (format nil "LED Status : ~a" status)))))

;; Web Application Function
(defroutes app (env)
  (GET "/" #'index)                ; Call "function index" when GET is called "/"
  (POST "/post" #'post))               ; Call "function post" when POST is called "/"

;; Main function
(defun main ()
  ;; Initialize GPIO
  (init-gpio)
  ;; Clack UP
  (clackup #'app :port 5000 :debug t))

;; Execution
(main)
