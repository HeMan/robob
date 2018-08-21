FROM ros:lunar
ARG rosversion=lunar
RUN apt update; apt upgrade -y
RUN apt install -y sudo less libusb-dev
RUN apt install -y \
                   ros-$rosversion-joy \
                   ros-$rosversion-joy-teleop \
                   ros-$rosversion-roslint \
                   ros-$rosversion-rosserial-arduino
