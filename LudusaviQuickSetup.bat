@echo off

:: LUDUSAVI INFORMATION
:: ludusavi version
set ludusaviVersion="v0.25.0"
:: ludusavi Arch-OS
set ludusaviArchOS="win64"

:: RCLONE INFORMATION
:: rclone version
set rcloneVersion="v1.67.0"
:: rclone Arch-OS
set rcloneArchOS="windows-amd64"


if exist "Ludusavi" (
cd Ludusavi
del Ludusavi.exe
del rclone.exe
cd ..
) else (
goto skip1
)
:skip1

echo downloading Ludusavi
if exist Ludusavi.zip (
del /f /q ludusavi.zip
curl.exe -fSLo Ludusavi.zip https://github.com/mtkennerly/ludusavi/releases/download/%ludusaviVersion%/ludusavi-%ludusaviVersion%-%ludusaviArchOS%.zip
powershell Expand-Archive -Force ludusavi.zip
del /f /q ludusavi.zip
cls
) else (
curl.exe -fSLo Ludusavi.zip https://github.com/mtkennerly/ludusavi/releases/download/%ludusaviVersion%/ludusavi-%ludusaviVersion%-%ludusaviArchOS%.zip
powershell Expand-Archive -Force ludusavi.zip
del /f /q ludusavi.zip
cls
)

echo downloading rclone
if exist Ludusavi.zip (
del /f /q ludusavi.zip
curl.exe -fSLo ludusavi.zip https://downloads.rclone.org/%rcloneVersion%/rclone-%rcloneVersion%-%rcloneArchOS%.zip
powershell Expand-Archive -Force ludusavi.zip
move ludusavi\rclone-%rcloneVersion%-%rcloneArchOS%\rclone.exe ludusavi
del /f /q ludusavi.zip
rmdir /S /Q ludusavi\rclone-%rcloneVersion%-%rcloneArchOS%
cls
) else (
curl.exe -fSLo ludusavi.zip https://downloads.rclone.org/%rcloneVersion%/rclone-%rcloneVersion%-%rcloneArchOS%.zip
powershell Expand-Archive -Force ludusavi.zip
move ludusavi\rclone-%rcloneVersion%-%rcloneArchOS%\rclone.exe ludusavi
del /f /q ludusavi.zip
rmdir /S /Q ludusavi\rclone-%rcloneVersion%-%rcloneArchOS%
cls
)

echo creating 'Saves' folder
cd ludusavi
if not exist "Saves" (
mkdir Saves
cd ..
cls
) else (
cd ..
cls
)
