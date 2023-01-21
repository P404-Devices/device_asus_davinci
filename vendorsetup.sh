#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

case $TARGET_PRODUCT in
    "aospa_davinci")
        export ASUS_BUILD_PROJECT=AI2202
        export KERNEL_VARIANT=gki
        ;;
esac
