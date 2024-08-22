Ensure Flashpoint is installed to `C:\Flashpoint` as this guide is made with the assumption that this is the case.

1. Open Ludusavi from your Ludusavi folder in your cloud saved location
2. Click on 'Custom Games'
3. Click 'Add Game' and name it 'Flashpoint'
4. Create 15 paths
5. Fill in each path with the following directories (one directory per path), make sure you replace the windows username with the windows username you are using. 
```
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\Roaming\Macromedia\Flash Player\#SharedObjects
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\Roaming\Unity\WebPlayerPrefs
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\LocalLow\Microsoft\Silverlight
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\Roaming\Macromedia\Director MX 2004\SPR\Prefs
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\LocalLow\Adobe\Director 11\Projector\Prefs
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\LocalLow\Adobe\Director 11\SPR\Prefs
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\LocalLow\Adobe\Director 12\Projector\Prefs
C:\Users\_YOUR_WINDOWS_USERNAME_\AppData\LocalLow\Adobe\Director 12\SPR\Prefs
C:\Flashpoint\FPSoftware\fpnavigator-portable\User\flashpointnavigator\Profiles\Default\webappsstore.sqlite
C:\Flashpoint\FPSoftware\Shockwave\PJ851\Prefs
C:\Flashpoint\FPSoftware\Shockwave\PJ9\Prefs
C:\ProgramData\Adobe\Director 11\Projector\Prefs
C:\ProgramData\Adobe\Director 11\SPR\Prefs
C:\ProgramData\Adobe\Director 12\Projector\Prefs
C:\ProgramData\Adobe\Director 12\SPR\Prefs
```
You're Done! Add Flashpoint to Playnite and enjoy!
---
Note: 
1. When adding Flashpoint to Playnite, do so by drag and dropping the Flashpoint.lnk file located in the root directory of `C:\Flashpoint`, after doing so right click on Flashpoint within Playnite, click 'edit', click 'actions' and click 'Tracking Mode' and set it to 'Proccess', After doing this hit 'save'.

2. You will need to create a symbolic link between the folders present in `%AppData%\Roaming\Macromedia\Flash Player\#SharedObjects` on the machines you are syncing together with, as these folders are unique per machine and need to be linked up.
more information can be found [here](https://flashpointarchive.org/datahub/Save_Data_Locations) and [here](https://www.howtogeek.com/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/#how-to-create-symbolic-links-with-a-graphical-tool). 
Launch Flashpoint on the second machine and play a game, make a save file or whatever (this is done in order to generate the machines unique save folder), note the name of the 2nd machines folder, delete it, make a symbolic link of the 1st computers folder (the one that actually has the save files you want) and name the symbolic link folder what the name of 2nd computers folder was before you deleted it.
