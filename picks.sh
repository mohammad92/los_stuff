#!/bin/bash

set -e
source build/envsetup.sh

# device/samsung/qcom-common
repopick 266367 # qcom-common: move doze to hardware/samsung

# frameworks/opt/telephony
repopick -c 20 -t ten-qc-telephony-fix
repopick 265322 # SimPhoneBook: Add ANR/EMAIL support for USIM phonebook.

# hardware/samsung
repopick -c 20 -t samsung-doze
repopick 256236 # samsung: AdvancedDisplay: Migrate to androidx
repopick 264967 # samsung: move modemloader and wifiloader to /vendor

# packages/services/Telephony
repopick 256795 # Don't start SIP service before decrypted

