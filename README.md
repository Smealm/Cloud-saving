# Cloud-saving

This github page serves as a tutorial for something i've discovered, something I wanted for a long time but could never seem to figure out, until recently.
Video game cloud saving, using any game from [PCGamingWiki](https://www.pcgamingwiki.com/)

Ever tried to play [Saints Row 3](https://www.pcgamingwiki.com/wiki/Saints_Row:_The_Third_Remastered#Save_game_cloud_syncing) on epic games and got annoyed [how it isn't cloud saved](https://www.reddit.com/r/SaintsRow/comments/wwrm0w/no_cloud_saving_on_epic/)? 
Ever got a game through less then legitimate means and wanted some sort of cloud saving, [similiar to Steams](https://help.steampowered.com/en/faqs/view/68D2-35AB-09A9-7678)?
Well this guide has got you covered as it solves this issue

# Choosing a storage provider
This guide requires a cloud storage provider (choose your prefered one)
1. [Google Drive](https://drive.google.com/)
2. [Mega.nz](https://mega.nz/)
3. [DropBox](https://www.dropbox.com/)
4. [OneDrive](https://onedrive.com/)

(any cloud storage provider works, as long as they provide software that mounts your cloud drive onto your system and [allows file mirroring](https://support.google.com/drive/answer/13401938?hl=en))

# Downsides
1. All your windows devices must have the same Windows username to sync with each other, this is due to how ludusavi restores saves, it restores an entire directory leading to the save which includes your windows username. Just use the same windows username on both systems so the directories match up
2. You have to do this manually for each machine, once it is setup though they will sync with each other perfectly with no hassle.
3. Only Windows is supported, once again due to how ludusavi restores saves.
4. You have to launch the game through Playnite for the saves to be synced with the cloud

With that out of the way here is how you do it

# Install Playnite and the Ludusavi Extension
1. download and install [playnite](https://playnite.link/)
2. open playnite and click on the controller icon located on the top left part of the window
3. in the dropdown window click 'Add-ons'
4. click on the 'Browse' section and click on 'Generic'
5. in the search bar search for 'Ludusavi' and install the plugin (DO NOT INSTALL LUDUSAVI RESTIC, ONLY INSTALL LUDUSAVI)
6. once the add-on is downloaded apply and restart playnite

# Setup prefered cloud service (in this case google drive)
1. [download google drive](https://www.google.com/drive/download/)
2. run the installer
3. once google drive is installed sign in or make an account
4. click on the tray icon and click the gear
5. click 'preferences'
6. in the new window that pops up click 'Google Drive'
7. under 'My Drive syncing options' click 'Mirror Files' (Make sure you have enough disk space)
8. make sure google drive is set to run on startup

# Prepping your cloud service 
([place this at the root of your google drive and run it](https://github.com/Smealm/Cloud-saving/blob/main/LudusaviQuickSetup.bat))
or follow the instructions below if you wanna set it up manually
1. create a folder named 'ludusavi' on the root of your google drive
2. go into the newly created ludusavi folder and create a 'Saves' folder
3. download ludusavi, extract it and put its .exe file in your ludusavi folder
4. download rclone, extract it and put rclone.exe in your ludusavi folder
5. delete the leftover files

# configuring Playnite
1. go into playnite, click the controller icon and go into add-ons

2. click on 'extension settings'

3. click on 'generic'

4. click on 'ludusavi'

5. in the 'name or full path of the Ludusavi executable', click browse and navigate to your ludusavi folder on your google drive and select the ludusavi.exe file

6. after that check the 'Override full path to directory for storing backups' and navigate to your 'Saves' folder you created earlier

7. enable 'Override backup format' and select .zip (makes downloading / syncing to and from google drive much faster, as well as saving storage space)

8.1 enable 'Override backup retention' and set it to 'Max full backups' to 1 and set 'Max differential backups per full backup' to 1
8.2 I recommend downloading [TeraBox](https://www.terabox.com) and setting up the desktop app to automatically backup your google drive's '/Ludusavi/Saves' folder, in case something goes wrong and you have to restore an older save for a game.

9. enable 'Back up save data for a game after playing it' 

10. disable 'Ask first instead of doing it automatically'

11. enable 'Also restore save data for a game before playing it'

12. enable 'Back up games on an interval during play' and set it to 15 - 30 minutes (up to personal preference), this feature just makes it so if your computer crashes or power gets cut out you will still likely have a 5 - 15 minute backup of your save file stored on your cloud server)

13. enable 'Only show notifications on Failure'

---

Tips: if playnite keeps saying "Ludusavi does not recognize (game name), this game requires a matching custom entry in ludusavi" then right click on the game, hover over the 'Ludusavi' option, click 'Look up with another title, search for the game select & apply it then it should work.

Your done! Simply import your games into playnite and launch them through it.
