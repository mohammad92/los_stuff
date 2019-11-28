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

# frameworks/native
repopick 259448 # libui: Allow invalid bits from callers conditionally

# frameworks/opt/telephony
#repopick -c 10 -t ten-ims
repopick -c 20 -t ten-qc-telephony-fix
#repopick -c 30 -t ten-qc-ims # And frameworks/opt/net/ims
repopick -c 30 -t ten-qc-telephony-ext

# hardware/samsung
repopick 256236 # samsung: AdvancedDisplay: Migrate to androidx
repopick 264866 # samsung: remove old fingerprint and lights hal
repopick 264867 # samsung: power: dont depend on liblights_helper

# packages/services/Telephony
repopick 256792 # Telephony: Add ERI configuration for U.S. Cellular
repopick 256793 # Telephony: Support muting by RIL command
repopick 256795 # Don't start SIP service before decrypted

# vendor/lineage
repopick 258204 # build: set build fingerprint for all devices
