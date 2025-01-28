@echo off
install.ps1
tema.deskthemepack
wuauclt /detectnow
wuauclt /updatenow
winget update
winget instal upgrade