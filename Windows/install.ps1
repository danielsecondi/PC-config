# Funzione per scaricare e installare un programma
function Install-Program {
    param (
        [string]$url,
        [string]$outputPath,
        [string]$installer
    )
    Write-Host "Scaricando $url..."
    Invoke-WebRequest -Uri $url -OutFile $outputPath
    Write-Host "Installando $installer..."
    Start-Process -FilePath $outputPath -ArgumentList "/silent" -Wait
    Remove-Item -Path $outputPath -Force
}

Write-Host "Abilitando l'ibernazione..."
powercfg -h on

Write-Host "Installando Google Chrome..."
Install-Program -url "https://dl.google.com/chrome/install/standalonesetup64.exe" -outputPath "$env:TEMP\chrome_installer.exe" -installer "Chrome"

Write-Host "Installando PuTTY..."
Install-Program -url "https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-installer.msi" -outputPath "$env:TEMP\putty_installer.msi" -installer "PuTTY"

Write-Host "Installando mRemoteNG..."
Install-Program -url "https://github.com/mRemoteNG/mRemoteNG/releases/download/3.12.0/mRemoteNG-Installer-3.12.0.exe" -outputPath "$env:TEMP\mRemoteNG_installer.exe" -installer "mRemoteNG"

Write-Host "Installando Windows Terminal..."
Install-Program -url "https://aka.ms/terminal" -outputPath "$env:TEMP\windows_terminal_installer.msix" -installer "Windows Terminal"


Write-Host "Installando KeePass..."
Install-Program -url "https://keepass.info/download/Keepass-2.53.1.exe" -outputPath "$env:TEMP\keepass_installer.exe" -installer "KeePass"

Write-Host "Installando WhatsApp..."
Install-Program -url "https://web.whatsapp.com/download" -outputPath "$env:TEMP\whatsapp_installer.exe" -installer "WhatsApp"

Write-Host "Installando Unigram..."
Install-Program -url "https://github.com/UnigramDev/Unigram/releases/download/5.0/UnigramSetup.exe" -outputPath "$env:TEMP\unigram_installer.exe" -installer "Unigram"

Write-Host "Installando Discord..."
Install-Program -url "https://discord.com/api/download?platform=win" -outputPath "$env:TEMP\discord_installer.exe" -installer "Discord"

Write-Host "Installando Adobe Creative Cloud..."
Install-Program -url "https://creativecloud.adobe.com/apps/download/creative-cloud" -outputPath "$env:TEMP\adobe_creative_cloud_installer.exe" -installer "Adobe Creative Cloud"

Write-Host "Installando Premiere Rush tramite Adobe Creative Cloud..."
Start-Process "$env:TEMP\adobe_creative_cloud_installer.exe" -ArgumentList "/silent" -Wait
Start-Process "creativecloud://install/Adobe.PremiereRush" -Wait

Write-Host "Installando Character Animator tramite Adobe Creative Cloud..."
Start-Process "$env:TEMP\adobe_creative_cloud_installer.exe" -ArgumentList "/silent" -Wait
Start-Process "creativecloud://install/Adobe.CharacterAnimator" -Wait

Write-Host "Installando PhotoScape X..."
Install-Program -url "https://photoscape.org/ps/main/download.php" -outputPath "$env:TEMP\photoscapex_installer.exe" -installer "PhotoScape X"

Write-Host "Installando Audacity..."
Install-Program -url "https://www.fosshub.com/Audacity.html/Audacity-win-3.1.3.exe" -outputPath "$env:TEMP\audacity_installer.exe" -installer "Audacity"

Write-Host "Installando OBS Studio..."
Install-Program -url "https://obsproject.com/download" -outputPath "$env:TEMP\obs_installer.exe" -installer "OBS Studio"

Write-Host "Installando VMware Workstation Pro..."
Install-Program -url "https://www.vmware.com/go/getworkstation-win" -outputPath "$env:TEMP\vmware_installer.exe" -installer "VMware Workstation Pro"

Write-Host "Installando Spotify..."
Install-Program -url "https://download.scdn.co/SpotifySetup.exe" -outputPath "$env:TEMP\spotify_installer.exe" -installer "Spotify"

Write-Host "Installando Notion..."
Install-Program -url "https://www.notion.so/desktop" -outputPath "$env:TEMP\notion_installer.exe" -installer "Notion"

Write-Host "Installando TickTick..."
Install-Program -url "https://www.ticktick.com/webapp/download" -outputPath "$env:TEMP\ticktick_installer.exe" -installer "TickTick"

Write-Host "Installa il calendario di Notion tramite Notion stesso."
Start-Process "notion://"

Write-Host "Installando Rufus..."
Install-Program -url "https://rufus.ie/en/download.html" -outputPath "$env:TEMP\rufus_installer.exe" -installer "Rufus"

Write-Host "Installando Visual Studio Code..."
Install-Program -url "https://aka.ms/win32-x64-user-stable" -outputPath "$env:TEMP\vs_code_installer.exe" -installer "Visual Studio Code"

Write-Host "Installando Visual Studio 2022..."
Install-Program -url "https://aka.ms/vs/17/release/vs_installer.exe" -outputPath "$env:TEMP\vs_installer.exe" -installer "Visual Studio 2022"

Write-Host "Installando 4K Video Downloader..."
Install-Program -url "https://dl.4kdownload.com/4kvideodownloader-installer.exe" -outputPath "$env:TEMP\4k_video_downloader_installer.exe" -installer "4K Video Downloader"

Write-Host "Installando FreeFileSync..."
Install-Program -url "https://freefilesync.org/download/FreeFileSync_11.17_Windows_Setup.exe" -outputPath "$env:TEMP\freefilesync_installer.exe" -installer "FreeFileSync"

Write-Host "Installando AnyDesk..."
Install-Program -url "https://download.anydesk.com/AnyDesk.exe" -outputPath "$env:TEMP\anydesk_installer.exe" -installer "AnyDesk"

Write-Host "Installando BlueStacks..."
Install-Program -url "https://cdn1.bluestacks.com/download/installer/BlueStacksInstaller.exe" -outputPath "$env:TEMP\bluestacks_installer.exe" -installer "BlueStacks"

Write-Host "Installando HP Cloud Recovery..."
Install-Program -url "https://www.hp.com/support/cloud-recovery" -outputPath "$env:TEMP\hp_cloud_recovery_installer.exe" -installer "HP Cloud Recovery"

Write-Host "Installando HP Smart..."
Install-Program -url "https://www.hp.com/support/hpsmart" -outputPath "$env:TEMP\hp_smart_installer.exe" -installer "HP Smart"

Write-Host "Installando Java..."
Install-Program -url "https://www.oracle.com/java/technologies/javase-jdk11-downloads.html" -outputPath "$env:TEMP\java_installer.exe" -installer "Java"

Write-Host "Installando Nano Zip..."
Install-Program -url "https://www.nanozip.com/download" -outputPath "$env:TEMP\nanozip_installer.exe" -installer "Nano Zip"

Write-Host "Installando Notepad++..."
Install-Program -url "https://notepad-plus-plus.org/downloads" -outputPath "$env:TEMP\npp_installer.exe" -installer "Notepad++"

Write-Host "Installando Paramount+..."
Install-Program -url "https://www.paramountplus.com/download" -outputPath "$env:TEMP\paramount_installer.exe" -installer "Paramount+"

Write-Host "Installando Prime Video..."
Install-Program -url "https://www.amazon.com/Prime-Video-Download-Windows/dp/B07T15HFG2" -outputPath "$env:TEMP\primevideo_installer.exe" -installer "Prime Video"

Write-Host "Installando TLauncher..."
Install-Program -url "https://tlauncher.org/en/download/" -outputPath "$env:TEMP\tlauncher_installer.exe" -installer "TLauncher"

Write-Host "Installando WhoCrashed..."
Install-Program -url "https://www.resplendence.com/download/whocrashed_setup.exe" -outputPath "$env:TEMP\whocrashed_installer.exe" -installer "WhoCrashed"

Write-Host "Installando WireGuard..."
Install-Program -url "https://download.wireguard.com/windows-client/wireguard-installer.exe" -outputPath "$env:TEMP\wireguard_installer.exe" -installer "WireGuard"

Write-Host "Installazione completata!"