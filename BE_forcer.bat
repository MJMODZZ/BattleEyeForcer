@shift /0
@shift /0
@ECHO OFF
color 07
title Fortnite BE Forcer
set /a try=1
set ESC=
set Red=%ESC%[31m
set Green=%ESC%[32m
set Yellow=%ESC%[33m
set Blue=%ESC%[34m
set Magenta=%ESC%[35m
set Cyan=%ESC%[36m
set White=%ESC%[37m
set LRed=%ESC%[91m
set LGreen=%ESC%[92m
set LYellow=%ESC%[93m
set LBlue=%ESC%[94m
set LMagenta=%ESC%[95m
set Red=%ESC%[96m

echo.
echo %Red%  Fortnite BE Forcer (Made On 2:41PM 12/4/2021)
echo.
echo %Red%  Press any key to start...
pause>nul
:BE
date 12/4/2021
cls
echo.
echo %Red%  Working, please do not do anything (Try n.%try%)
set /a try+=1
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Identifiers" /va /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Hardware Survey" /va /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games" /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
timeout /T 5 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch
:check1
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
goto done
) || (
  goto check2
)
:check2
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe 1>nul 2>nul
sc stop EasyAntiCheat 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check1
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto BE

:done
cls
tzutil /s "Eastern Standard Time"
net stop w32time
w32tm /config /syncfromflags:manual /manualpeerlist:"0.it.pool.ntp.org 1.it.pool.ntp.org 2.it.pool.ntp.org 3.it.pool.ntp.org"
net start w32time
w32tm /config /update
w32tm /resync /rediscover
cls
echo.
echo %Red%  BE is forced!
timeout /t 60 /nobreak 1>nul 2>nul
::taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
pause >nul