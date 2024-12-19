;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::BagRecorderDump)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'BagRecorderDump (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BAGRECORDERDUMP")
  (make-package "AGV_MSGS::BAGRECORDERDUMP"))

(in-package "ROS")
;;//! \htmlinclude BagRecorderDump.msg.html


(defclass agv_msgs::BagRecorderDump
  :super ros::object
  :slots (_id _label _size _files ))

(defmethod agv_msgs::BagRecorderDump
  (:init
   (&key
    ((:id __id) "")
    ((:label __label) "")
    ((:size __size) 0)
    ((:files __files) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _label (string __label))
   (setq _size (round __size))
   (setq _files __files)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:files
   (&optional __files)
   (if __files (setq _files __files)) _files)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _label
    4 (length _label)
    ;; int64 _size
    8
    ;; string[] _files
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _files)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; int64 _size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size) (= (length (_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size . bv) 0) 0) s)
              (write-long (ash (elt (_size . bv) 1) -1) s))
             ((and (class _size) (= (length (_size . bv)) 1)) ;; big1
              (write-long (elt (_size . bv) 0) s)
              (write-long (if (>= _size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size s)(write-long (if (>= _size 0) 0 #xffffffff) s)))
     ;; string[] _files
     (write-long (length _files) s)
     (dolist (elem _files)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _size
#+(or :alpha :irix6 :x86_64)
      (setf _size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string[] _files
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _files (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _files i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::BagRecorderDump :md5sum-) "aeb2667881e632e7b14a92b87d768564")
(setf (get agv_msgs::BagRecorderDump :datatype-) "agv_msgs/BagRecorderDump")
(setf (get agv_msgs::BagRecorderDump :definition-)
      "string id
string label
int64 size
string[] files

")



(provide :agv_msgs/BagRecorderDump "aeb2667881e632e7b14a92b87d768564")


