#! /bin/bash
mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n postmarketos-user -d uboot-user.cmd user.scr

dtc -@ -I dts -O dtb -o pinephone-vccq-mod.dtbo pinephone-vccq-mod.dts
