# AnyKernel3 Ramdisk Mod Script
# osm0sis @ XDA
# Properly configured for OnePlus/Realme MT6991 & SM8750

## AnyKernel setup
# begin properties
properties() { '
kernel.string=NetHunter/GameKernel by github@gfdvd3
do.devicecheck=0
do.modules=0
do.cleanup=0
do.cleanonly=0
do.systemless=1
do.initd=0
do.treblestuff=0
do.extra.workdir=0
do.cleanuphidden=1
do.installbloat=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_level=auto;
no_wipe_cache=true;
no_flash=true;

# import functions / init
. tools/ak3-core.sh;

# trim patchlevel from kernel to pass safety checks
trim_patchlevel() {
  dump_boot;
  write_boot;
}

trim_patchlevel;
