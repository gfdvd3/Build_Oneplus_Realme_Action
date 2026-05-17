# AnyKernel3 Ramdisk Mod Script
# osm0sis @ XDA

properties() { '
kernel.string=NetHunter/GameKernel by gfdvd3
do.devicecheck=0
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; }

block=boot
is_slot_device=auto
ramdisk_compression=auto
patch_vbmeta_flag=auto
no_magisk_check=1

. tools/ak3-core.sh

# boot install - support init_boot (GKI 2.0)
if [ -L "/dev/block/bootdevice/by-name/init_boot_a" ] || [ -L "/dev/block/by-name/init_boot_a" ]; then
  split_boot
  flash_boot
else
  dump_boot
  write_boot
fi
