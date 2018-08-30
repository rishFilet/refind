#! /bin/bash
cd /Users/rkhan/Tools/boot_manager/refind-bin-0.11.3
sh ./mountesp
sudo bless --mount /Volumes/ESP --setBoot --file /Volumes/ESP/EFI/refind/refind_x64.efi --shortform
echo Script Complete!
echo Restart Computer view boot manager load.
