# refind repo
https://sourceforge.net/projects/refind/files/latest/download

# refind
Boot manager installation and script for handling boot coups. Used with dual booting linux and mac

# refind Install
The SIP also needs to be disabled. This needs to be disabled in the Recovery Mode. Restart the mac and hold down cmd+R on the grey screen until apple logo shows (this may take a while and don't release until it shows up).

When in recovery mode, go to Utilities > Terminal.
Then type in *csrutil disable*
This will disable the SIP security and allow boot manager install

In order to first install the boot manager, drag the refind-install file to terminal (with sudo) or use sh ./refind-install when in the directory. 

Restart the mac and make sure the boot manager starts

# boot coup
Sometimes if linux is updated, then the boot manager will be overwritten to start GRUB (which is the linux boot manager) instead of refind. To circumvent this, some commands can be written to fix this. One thing to note is that i installed my refind on my ESP volume, so i followed the steps based on this. 
Resource: https://www.rodsbooks.com/refind/bootcoup.html

These were the steps from the doc followed :

*Open a Terminal window in which you'll type the following commands.*

*If rEFInd is installed on your ESP, you must first mount it. The easy way to do this is to use the mountesp script that comes with rEFInd. When you run it, the script should tell you where the ESP was mounted. You can do the job manually by typing mkdir /Volumes/ESP followed by sudo mount -t msdos /dev/disk0s1 /Volumes/ESP. Note that you may need to change /dev/disk0s1 to something else if your ESP is at an unusual location. Type diskutil list or use a tool such as my GPT fdisk (gdisk) to examine your partition table to find your ESP if necessary.*

*"Bless" rEFInd by typing one of the following two commands:
If rEFInd is installed on the ESP, type sudo bless --mount /Volumes/ESP --setBoot --file /Volumes/ESP/efi/refind/refind_x64.efi --shortform, adjusting the mount point and exact path to the file as appropriate for your installation.*

I made a script to do all these changes in the event of a boot coup:
1. Reboot back into mac by holding down option key at the grey screen
2. Run the script by dragging into terminal or using sh ./boot_coup.command
3. Enter password
4. Restart mac and check it 


sideNote: After creating the script i used *chmod u+x ~/Desktop/myCommandScript.command* to give the terminal permission to run it.
