**Files used in this repository are based on the ones from the PostmarketOS project, originally created by Federico Amedeo Izzo.**


# pine64-pinephone-emmc-vccq-hardware-mod
A small repository containing the files needed to make PostmarketOS images bootable after performing the VCCQ hardware mod.

If you performed the VCCQ Hardware mod (to increase the eMMC performance) you need to also change your device tree to make the Pinephone bootable again (both on SD and eMMC).

If you performed the mod before creating a bootable media, you can simply generated the required files and place them in the boot/ directory of your installation.

## How to use:
```$YOUR_POSTMARKETOS_BOOT_DIRECTORY``` is the mounted boot partition on your SD card or eMMC device. 

### Install dependencies (Ubuntu/Debian):
```
sudo apt install device-tree-compiler u-boot-tools
```

### Create and copy files
```
./create_files.sh
mv user.scr $YOUR_POSTMARKETOS_BOOT_DIRECTORY
mv pinephone-vccq-mod.dtbo $YOUR_POSTMARKETOS_BOOT_DIRECTORY
```

### In the end it should look something like this:
![Example](https://user-images.githubusercontent.com/50917034/152453751-417d5ece-b5fa-4d51-844b-d5d117c44074.jpg)
