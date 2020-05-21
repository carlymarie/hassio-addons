#!/bin/sh
ls -s /config /root/.android
adb disconnect $ADB_HOST:$ADB_PORT
adb connect $ADB_HOST:$ADB_PORT
while true
do
    sleep 1
done