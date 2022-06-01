
## Activate WLS2
dism.exe /online /Enable-Feature /Featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /Enable-Feature /FeatureName:VirtualMachinePlatform /all /norestart
dism.exe /online /Enable-Feature /FeatureName:Microsoft-Hyper-V /all /norestart

wsl --set-default-version 2
wsl --list --verbose
wsl --set-version <distro> 2
