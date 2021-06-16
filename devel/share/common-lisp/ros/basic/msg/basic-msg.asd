
(cl:in-package :asdf)

(defsystem "basic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sensordata" :depends-on ("_package_sensordata"))
    (:file "_package_sensordata" :depends-on ("_package"))
  ))