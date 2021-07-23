## Activate WLS2
#Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
#dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
#wsl --set-default-version 2



#create folder 
mkdir c:\tmp\

######NAVEGADORS######
#Brave
$url = "https://laptop-updates.brave.com/latest/winx64"
$path = "c:\tmp\brave.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#-ArgumentList '/silent', '/install' -PassThru -Wait


######TOOLS######
#Bitwarden
$url = "https://vault.bitwarden.com/download/?app=desktop&platform=windows"
$path = "c:\tmp\bitwarden.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Dropbox
$url = "https://www.dropbox.com/download?os=win&rtoken=AvntXBhZhjF%2B7ZhN%2FBHiOuYhkYeZquCY%2B1%2FTl2gxO%2FQ%3D"
$path = "c:\tmp\dropbox.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#7zip
$url = "https://sourceforge.net/projects/sevenzip/files/7-Zip/19.00/7z1900-x64.exe/download?use_mirror=razaoinfo"
$path = "c:\tmp\7zip.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 


#liht
$url = "https://app.prntscr.com/build/setup-lightshot.exe"
$path = "c:\tmp\ligh.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Note++
$url = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.1/npp.8.1.1.Installer.exe"
$path = "c:\tmp\note++.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#pdf24
$url = "https://stx.pdf24.org/products/pdf-creator/download/pdf24-creator-10.0.12.exe"
$path = "c:\tmp\pdf24.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Microsft Teams
$url = "https://go.microsoft.com/fwlink/p/?LinkID=869426&culture=es-mx&country=WW&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64"
$path = "c:\tmp\teams.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#zoom
$url = "https://zoom.us/client/5.7.1.543/ZoomInstaller.exe?archType=x64"
$path = "c:\tmp\zoom.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Todoits
$url = "https://todoist.com/windows_app"
$path = "c:\tmp\todits.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Notion
$url = "https://www.notion.so/desktop/windows/download"
$path = "c:\tmp\notion.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#telegram
$url = "https://telegram.org/dl/desktop/win64"
$path = "c:\tmp\telegram.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#vlcplayer
$url = "https://get.videolan.org/vlc/3.0.16/win64/vlc-3.0.16-win64.exe"
$path = "c:\tmp\vlc.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Spotify
$url = "https://download.scdn.co/SpotifySetup.exe"
$path = "c:\tmp\spotify.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 


######PERIFERICOS######
#JBL_ENGINE
$url = "https://storage.harman.com/downloads/JBL_QuantumENGINE_1.6.0.1053_x64.exe"
$path = "c:\tmp\jbl.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Logitech HUB
$url = "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe"
$path = "c:\tmp\logitechub.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 

#Corsair
$url = "https://downloads.corsair.com/Files/CUE/iCUESetup_4.13.223_release.msi"
$path = "c:\tmp\corsair.msi"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
curl -Uri $url -OutFile $path
Start-Process -FilePath $path 


#erase folder
Remove-Item -LiteralPath "c:\tmp\" -Force -Recurse


