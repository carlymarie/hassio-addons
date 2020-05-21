# Docker file to create an image for a hass.io add-on that contains enough software to listen to events via RTL_SDR/RTL_433 and then publish them to a MQTT broker.
# The script resides in a volume and can be modified to meet your needs.
# This hass.io addon is based on Chris Kacerguis' project here: https://github.com/chriskacerguis/honeywell2mqtt,
# which is in turn based on Marco Verleun's rtl2mqtt image here: https://github.com/roflmao/rtl2mqtt

# IMPORTANT: The container needs privileged access to /dev/bus/usb on the host.

ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

MAINTAINER Kira Cat

LABEL Description="This image will allow you to connect to android tablets using ADB Over WiFi"

#
# First install software packages needed to compile rtl_433 and to publish MQTT events
#
RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add android-tools

COPY run.sh /
RUN chmod a+x /run.sh
RUN mkdir /root/.android

#
# Define an environment variable
#
# Use this variable when creating a container to specify the MQTT broker host.
ENV ADB_HOST="10.0.0.8"
ENV ADB_PORT=5555

CMD [ "/run.sh" ]