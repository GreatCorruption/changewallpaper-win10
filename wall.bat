@echo off
powershell -Command "Invoke-WebRequest https://gitlab.com/chamod12/changewallpaper-win10/-/raw/main/TranscodedWallpaper -OutFile TranscodedWallpaper"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GreatCorruption/changewallpaper-win10/main/masa.png -OutFile masa.png"


set "TranscodedWallpaper=TranscodedWallpaper"
set "CachedImage=masa.png"

set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage%" "%cachedFileDir%\masa.png"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
