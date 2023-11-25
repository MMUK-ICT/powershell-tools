# Define the custom RDP port
$customRdpPort = 5125

# Add a new firewall rule for the custom RDP port
New-NetFirewallRule -DisplayName "CustomRDP" -Direction Inbound -Protocol TCP -LocalPort $customRdpPort -Action Allow

# Change the RDP port in the registry
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
$registryName = "PortNumber"
Set-ItemProperty -Path $registryPath -Name $registryName -Value $customRdpPort

# Restart the RDP service
Restart-Service -Name TermService
