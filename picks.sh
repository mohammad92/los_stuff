#!/bin/bash

set -e
source build/envsetup.sh

# device/samsung/qcom-common
repopick 266367 # qcom-common: move doze to hardware/samsung

# hardware/samsung
repopick -c 20 -t samsung-doze
repopick 256236 # samsung: AdvancedDisplay: Migrate to androidx
repopick 264967 # samsung: move modemloader and wifiloader to /vendor
