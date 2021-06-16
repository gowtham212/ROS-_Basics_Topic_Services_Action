; Auto-generated. Do not edit!


(cl:in-package basic-msg)


;//! \htmlinclude my.msg.html

(cl:defclass <my> (roslisp-msg-protocol:ros-message)
  ((d
    :reader d
    :initarg :d
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (hum
    :reader hum
    :initarg :hum
    :type cl:float
    :initform 0.0))
)

(cl:defclass my (<my>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic-msg:<my> is deprecated: use basic-msg:my instead.")))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <my>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic-msg:d-val is deprecated.  Use basic-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <my>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic-msg:name-val is deprecated.  Use basic-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <my>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic-msg:temp-val is deprecated.  Use basic-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'hum-val :lambda-list '(m))
(cl:defmethod hum-val ((m <my>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic-msg:hum-val is deprecated.  Use basic-msg:hum instead.")
  (hum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my>) ostream)
  "Serializes a message object of type '<my>"
  (cl:let* ((signed (cl:slot-value msg 'd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my>) istream)
  "Deserializes a message object of type '<my>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hum) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my>)))
  "Returns string type for a message object of type '<my>"
  "basic/my")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my)))
  "Returns string type for a message object of type 'my"
  "basic/my")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my>)))
  "Returns md5sum for a message object of type '<my>"
  "ae971ffc0dc298299f0004681564b4ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my)))
  "Returns md5sum for a message object of type 'my"
  "ae971ffc0dc298299f0004681564b4ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my>)))
  "Returns full string definition for message of type '<my>"
  (cl:format cl:nil "int32 d~%string name~%float32 temp~%float32 hum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my)))
  "Returns full string definition for message of type 'my"
  (cl:format cl:nil "int32 d~%string name~%float32 temp~%float32 hum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my>))
  "Converts a ROS message object to a list"
  (cl:list 'my
    (cl:cons ':d (d msg))
    (cl:cons ':name (name msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':hum (hum msg))
))
