Ensure RetroArch is installed to `C:\RetroArch-Win64` as this guide is made with the assumption that this is the case.

Open Ludusavi from your Ludusavi folder in your cloud saved location
Click on 'Custom Games'
Click 'Add Game' and name it 'RetroArch'
Create 6 paths
Fill in each path with the following directories (one directory per path).

```
C:\RetroArch-Win64\states
C:\RetroArch-Win64\saves
C:\RetroArch-Win64\system
C:\RetroArch-Win64\playlists
C:\RetroArch-Win64\Retroarch.cfg
C:\RetroArch-Win64\Retroarch.cfg.bkp
```

You're Done! Add RetroArch to Playnite and enjoy!


AND/OR


1. go into your cloud saved location
2. go into ludusavi
3. go into saves
4. make a 'RetroArch' folder
5. make the following folders
   ```
   saves
   states
   system
   playlists
   ```
6. Then go into retroarch, settings, directory
7. change all given directories to ones that match the ones your just created

You're done!

Notes: If you use both at the same time then on your new system you can won't have to set the directories again in retroarch, the cfg will be carried over so retroarch will just link over the other, save data and settings intact.

Downsides of both
First method: 
1. When launching from playnite, exiting retroarch and loading another game can cause a message to appear saying that ludusavi hasn't finished it's original task, this is caused by ludusavi still compressing retroarch's saves, configs etc. retroarch uses a lot of files in these directories so it takes ludusavi longer to back them up. using the second method allows you to start up retroarch faster from playnite due to the unpacking process being better and when closing you can get to launching something else almost immediately. 

Second method:
2. this has larger storage requirements on your cloud saving provider, pretty much it. retroarch with all of its files compressed in Ludusavi\saves\RetroArch is around 133mb for me while unpacked loose files it is around 400mb. this isn't really that bad for me as 400mb isnt that much but still it can add up quickly if you play lots of older games. 
