# Stop and disable OneDrive service
Stop-Service OneDrive
Set-Service OneDrive -StartupType Disabled

# Stop and disable Xbox Game Bar service
Stop-Service XboxGipSvc
Set-Service XboxGipSvc -StartupType Disabled

# Stop and disable Xbox Live service
Stop-Service XboxNetApiSvc
Set-Service XboxNetApiSvc -StartupType Disabled

# Stop and disable Print and Document Services
Stop-Service Spooler
Set-Service Spooler -StartupType Disabled

# Stop and disable Bluetooth Support Service
Stop-Service BTHSSecurityMgr
Set-Service BTHSSecurityMgr -StartupType Disabled
