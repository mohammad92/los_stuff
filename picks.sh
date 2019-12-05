#!/bin/bash

set -e
source build/envsetup.sh

# build/soong
repopick -c 20 256886 # soong: Add function to return camera parameters library name

# external/tinycompress
repopick 256308 # tinycompress: Enable extended compress format

# frameworks/av
repopick 256899 # camera: Allow devices to load custom CameraParameter code
repopick 258812 # CameraService: Support hooks for motorized camera

# frameworks/opt/telephony
repopick -c 20 -t ten-qc-telephony-fix
repopick -c 30 -t ten-qc-telephony-ext

# hardware/samsung
repopick 256236 # samsung: AdvancedDisplay: Migrate to androidx
repopick 264967 # samsung: move modemloader and wifiloader to /vendor

# packages/services/Telephony
repopick 256792 # Telephony: Add ERI configuration for U.S. Cellular
repopick 256793 # Telephony: Support muting by RIL command
repopick 256795 # Don't start SIP service before decrypted

# vendor/lineage
repopick 258204 # build: set build fingerprint for all devices
