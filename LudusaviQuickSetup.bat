:: LUDUSAVI INFORMATION
:: ludusavi version
set ludusaviVersion="v0.24.3"
:: ludusavi Arch-OS
set ludusaviArchOS="win64"

:: RCLONE INFORMATION
:: rclone version v1.67.0
set rcloneVersion="v1.67.0"
:: rclone Arch-OS
set rcloneArchOS="windows-amd64"



:: download Ludusavi
curl.exe -fSLo Ludusavi.zip https://github.com/mtkennerly/ludusavi/releases/download/%ludusaviVersion%/ludusavi-%ludusaviVersion%-%ludusaviArchOS%.zip

:: extract ludusavi.zip
powershell Expand-Archive -Force ludusavi.zip

:: delete ludusavi.zip
del /f /q ludusavi.zip

:: download rclone
curl.exe -fSLo ludusavi.zip https://downloads.rclone.org/%rcloneVersion%/rclone-%rcloneVersion%-%rcloneArchOS%.zip

:: extract ludusavi.zip (RClone)
powershell Expand-Archive -Force ludusavi.zip

:: delete ludusavi.zip (RClone)
del /f /q ludusavi.zip

:: move rclone to ludusavi root directory
move ludusavi\rclone-%rcloneVersion%-%rcloneArchOS%\rclone.exe ludusavi

:: enter Ludusavi directory
cd Ludusavi

:: create 'Saves' folder
mkdir Saves

:: delete rclone leftovers
rmdir /S /Q rclone-%rcloneVersion%-%rcloneArchOS%