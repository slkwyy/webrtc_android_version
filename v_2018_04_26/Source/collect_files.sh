#!/bin/bash

WEBRTC_ROOT=$1

if [[ -z "${WEBRTC_ROOT// }" ]]; then
    echo "Please specify WEBRTC_ROOT!"
    exit 1
fi

# rtc_base
mkdir rtc_base
rm -rf ./rtc_base/
cp -rf ${WEBRTC_ROOT}/src/rtc_base/java/src/ ./rtc_base/

# audio_device
mkdir audio_device
rm -rf ./audio_device/
cp -rf ${WEBRTC_ROOT}/src/modules/audio_device/android/java/src/ ./audio_device/

# libjingle_peerconnection
mkdir libjingle_peerconnection
rm -rf ./libjingle_peerconnection/
cp -rf ${WEBRTC_ROOT}/src/sdk/android/api/ ./libjingle_peerconnection/
cp ${WEBRTC_ROOT}/src/sdk/android/src/java/org/webrtc/* ./libjingle_peerconnection/org/webrtc/
