
## Activate WLS2
dism.exe /online /Enable-Feature /Featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /Enable-Feature /FeatureName:VirtualMachinePlatform /all /norestart
wsl --set-version Ubuntu 2
