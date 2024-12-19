;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::StringWithSchema)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'StringWithSchema (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::STRINGWITHSCHEMA")
  (make-package "AGV_MSGS::STRINGWITHSCHEMA"))

(in-package "ROS")
;;//! \htmlinclude StringWithSchema.msg.html


(intern "*JSON*" (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(shadow '*JSON* (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(defconstant agv_msgs::StringWithSchema::*JSON* 1)
(intern "*CSV*" (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(shadow '*CSV* (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(defconstant agv_msgs::StringWithSchema::*CSV* 2)
(intern "*XML*" (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(shadow '*XML* (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(defconstant agv_msgs::StringWithSchema::*XML* 3)
(intern "*YAML*" (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(shadow '*YAML* (find-package "AGV_MSGS::STRINGWITHSCHEMA"))
(defconstant agv_msgs::StringWithSchema::*YAML* 4)

(defun agv_msgs::StringWithSchema-to-symbol (const)
  (cond
        ((= const 1) 'agv_msgs::StringWithSchema::*JSON*)
        ((= const 2) 'agv_msgs::StringWithSchema::*CSV*)
        ((= const 3) 'agv_msgs::StringWithSchema::*XML*)
        ((= const 4) 'agv_msgs::StringWithSchema::*YAML*)
        (t nil)))

(defclass agv_msgs::StringWithSchema
  :super ros::object
  :slots (_data _schema _format ))

(defmethod agv_msgs::StringWithSchema
  (:init
   (&key
    ((:data __data) "")
    ((:schema __schema) "")
    ((:format __format) 0)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _schema (string __schema))
   (setq _format (round __format))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:schema
   (&optional __schema)
   (if __schema (setq _schema __schema)) _schema)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _schema
    4 (length _schema)
    ;; uint8 _format
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _schema
       (write-long (length _schema) s) (princ _schema s)
     ;; uint8 _format
       (write-byte _format s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _schema
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _schema (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _format
     (setq _format (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::StringWithSchema :md5sum-) "f675b16631313e8f7598f59aa6b9873b")
(setf (get agv_msgs::StringWithSchema :datatype-) "agv_msgs/StringWithSchema")
(setf (get agv_msgs::StringWithSchema :definition-)
      "string data
string schema
uint8 format
uint8 JSON=1
uint8 CSV=2
uint8 XML=3
uint8 YAML=4
")



(provide :agv_msgs/StringWithSchema "f675b16631313e8f7598f59aa6b9873b")


