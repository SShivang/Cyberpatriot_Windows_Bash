@echo off

Title CyberPatriot Script 

REM Disable Guest Account

net user guest/active:no

REM Turn on Firewall

netsh advfirewall set all profiles state on

REM Turn on Auto Updates

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 4 /f
