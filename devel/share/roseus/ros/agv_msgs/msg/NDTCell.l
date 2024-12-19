;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NDTCell)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NDTCell (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NDTCELL")
  (make-package "AGV_MSGS::NDTCELL"))

(in-package "ROS")
;;//! \htmlinclude NDTCell.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agv_msgs::NDTCell
  :super ros::object
  :slots (_centroid _covariance _num_points ))

(defmethod agv_msgs::NDTCell
  (:init
   (&key
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:num_points __num_points) 0)
    )
   (send-super :init)
   (setq _centroid __centroid)
   (setq _covariance __covariance)
   (setq _num_points (round __num_points))
   self)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:num_points
   (&optional __num_points)
   (if __num_points (setq _num_points __num_points)) _num_points)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ;; uint64 _num_points
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint64 _num_points
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_points (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_points) (= (length (_num_points . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_points . bv) 0) 0) s)
              (write-long (ash (elt (_num_points . bv) 1) -1) s))
             ((and (class _num_points) (= (length (_num_points . bv)) 1)) ;; big1
              (write-long (elt (_num_points . bv) 0) s)
              (write-long (if (>= _num_points 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_points s)(write-long (if (>= _num_points 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint64 _num_points
     
#+(or :alpha :irix6 :x86_64)
      (setf _num_points (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_points (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get agv_msgs::NDTCell :md5sum-) "65aeba4f5b8d0bf1ffd3b8955d3f8799")
(setf (get agv_msgs::NDTCell :datatype-) "agv_msgs/NDTCell")
(setf (get agv_msgs::NDTCell :definition-)
      "geometry_msgs/Point  centroid
float64[9]           covariance
uint64               num_points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :agv_msgs/NDTCell "65aeba4f5b8d0bf1ffd3b8955d3f8799")


