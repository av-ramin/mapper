# Base image: ROS1 with Ubuntu 20.04 (adjust to your ROS1 version)

# Install ros image
## Run mapper on arm machine (companion)
# FROM arm64v8/ros:noetic-ros-base
## Run mapper on x86 machine (other)
FROM osrf/ros:noetic-desktop-full

# Set environment variables
ENV ROS_DISTRO=noetic
ENV CATKIN_WS=/catkin_ws

# Set ROS env variables
## Ros for ethernet
# ENV ROS_MASTER_URI=http://10.64.0.3:11311
# ENV ROS_IP=10.64.0.69
## Ros for vpn
ENV ROS_MASTER_URI=http://172.29.242.51:11311
ENV ROS_IP=172.29.123.108

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-catkin-tools \
    ros-${ROS_DISTRO}-std-msgs \
    ros-${ROS_DISTRO}-geometry-msgs \
    ros-${ROS_DISTRO}-rospy \
    ros-${ROS_DISTRO}-jsk-recognition-msgs \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install numpy

# Set up the workspace
WORKDIR ${CATKIN_WS}

# Copy the workspace source code
COPY src src

# Build the workspace
RUN /bin/bash -c "source /opt/ros/${ROS_DISTRO}/setup.bash && \
    catkin_make"

# Source the setup file
RUN echo "source ${CATKIN_WS}/devel/setup.bash" >> ~/.bashrc

# Make Python script executable
RUN chmod +x ${CATKIN_WS}/src/python_remap/src/cmd_to_stamped.py

# Default command to launch the Python script
CMD ["/bin/bash", "-c", "source /opt/ros/noetic/setup.bash && source ${CATKIN_WS}/devel/setup.bash && rosrun python_remap cmd_to_stamped.py"]
