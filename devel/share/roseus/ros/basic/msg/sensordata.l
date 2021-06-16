;; Auto-generated. Do not edit!


(when (boundp 'basic::sensordata)
  (if (not (find-package "BASIC"))
    (make-package "BASIC"))
  (shadow 'sensordata (find-package "BASIC")))
(unless (find-package "BASIC::SENSORDATA")
  (make-package "BASIC::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude sensordata.msg.html


(defclass basic::sensordata
  :super ros::object
  :slots (_d _name _temp _hum ))

(defmethod basic::sensordata
  (:init
   (&key
    ((:d __d) 0)
    ((:name __name) "")
    ((:temp __temp) 0.0)
    ((:hum __hum) 0.0)
    )
   (send-super :init)
   (setq _d (round __d))
   (setq _name (string __name))
   (setq _temp (float __temp))
   (setq _hum (float __hum))
   self)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:hum
   (&optional __hum)
   (if __hum (setq _hum __hum)) _hum)
  (:serialization-length
   ()
   (+
    ;; int32 _d
    4
    ;; string _name
    4 (length _name)
    ;; float32 _temp
    4
    ;; float32 _hum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _d
       (write-long _d s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hum
       (sys::poke _hum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _d
     (setq _d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hum
     (setq _hum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get basic::sensordata :md5sum-) "ae971ffc0dc298299f0004681564b4ef")
(setf (get basic::sensordata :datatype-) "basic/sensordata")
(setf (get basic::sensordata :definition-)
      "int32 d
string name
float32 temp
float32 hum

")



(provide :basic/sensordata "ae971ffc0dc298299f0004681564b4ef")


