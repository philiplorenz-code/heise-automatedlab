# Hyper-V Installation:
Install-WindowsFeature -Name Hyper-V -ComputerName <computer_name> -IncludeManagementTools -Restart


Install-PackageProvider Nuget -Force
Install-Module AutomatedLab -AllowClobber

# If you are on Linux and are not starting pwsh with sudo
# This needs to executed only once per user - adjust according to your needs!
Set-PSFConfig -Module AutomatedLab -Name LabAppDataRoot -Value /home/youruser/.alConfig -PassThru | Register-PSFConfig

# Prepare sample content - modify to your needs

# Windows
New-LabSourcesFolder -Drive C

# Linux
Set-PSFConfig -Module AutomatedLab -Name LabSourcesLocation -Value /home/youruser/labsources -PassThru | Register-PSFConfig
New-LabSourcesFolder # Linux
