FROM ros:lunar
ARG rosversion=lunar
RUN apt update; apt upgrade -y
RUN apt install -y sudo less
# Dependencies for ROS
RUN apt install -y libusb-dev libx11-dev libspnav-dev libcwiid-dev
RUN apt install -y \
                   ros-$rosversion-joy \
                   ros-$rosversion-joy-teleop \
                   ros-$rosversion-roslint \
                   ros-$rosversion-rosserial-arduino
