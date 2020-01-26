# DarkWake8

On certain mac computers, Wake On LAN does not completely wake up the mac :
the screen stays off, and the computer goes back to sleep after 30 seconds.
And in most cases, it doesn't let the user take remote control. 

It happens that the boot parameter "darkwake" can correct this issue when set to the value 8.

Before El Capitan, you simply add the modify the following file: /Library/Preferences/SystemConfiguration/com.apple.Boot.plist
And replace : <dict><key>Kernel Flags</key><string></string></dict>
By this :     <dict><key>Kernel Flags</key><string>darkwake=8</string></dict>

Since El Capitan, the security system doesn't let you to modify this file. 
You can (temporarily) disable the security system and directly modify the file, or you can use this script.

Simply execute the script: if the darkwake mode is not already set at 8, it will set it and ask if you want to restart the mac to take it into account immediately. 

The parameter will be inscripted in the NVRAM, and will stay until the NVRAM is flushed (in case of a big update for example).
You can run this script at startup so if will always check you are correctly configured: go to System Preferences > Users & Groups > Login Items > + > Select this script
