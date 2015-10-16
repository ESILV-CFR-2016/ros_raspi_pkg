; Auto-generated. Do not edit!


(cl:in-package rostestm-msg)


;//! \htmlinclude envoi.msg.html

(cl:defclass <envoi> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass envoi (<envoi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <envoi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'envoi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostestm-msg:<envoi> is deprecated: use rostestm-msg:envoi instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <envoi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostestm-msg:num-val is deprecated.  Use rostestm-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <envoi>) ostream)
  "Serializes a message object of type '<envoi>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <envoi>) istream)
  "Deserializes a message object of type '<envoi>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<envoi>)))
  "Returns string type for a message object of type '<envoi>"
  "rostestm/envoi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'envoi)))
  "Returns string type for a message object of type 'envoi"
  "rostestm/envoi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<envoi>)))
  "Returns md5sum for a message object of type '<envoi>"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'envoi)))
  "Returns md5sum for a message object of type 'envoi"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<envoi>)))
  "Returns full string definition for message of type '<envoi>"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'envoi)))
  "Returns full string definition for message of type 'envoi"
  (cl:format cl:nil "int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <envoi>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <envoi>))
  "Converts a ROS message object to a list"
  (cl:list 'envoi
    (cl:cons ':num (num msg))
))
