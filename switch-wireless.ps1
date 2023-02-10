# This script wswitches back and forth between 5ghz and 2ghz band

#Requires -RunAsAdministrator

#initialize adapter object
$adapter = Get-NetAdapter -Name "Wi-Fi"

# initialize registry keyword
$reg_keyword = "RoamingPreferredBandType"

# initialize registry values
$no_Pref = 0
$5g = 2

# Get current Band setting
$currentBand = $adapter | Get-NetAdapterAdvancedProperty -RegistryKeyword $reg_keyword


if ($currentBand.RegistryValue -lt 2){
    $adapter | Set-NetAdapterAdvancedProperty -RegistryKeyword $reg_keyword -RegistryValue $5g
    Write-Output "Set to 5GHz"
}
else {
    $adapter | Set-NetAdapterAdvancedProperty -RegistryKeyword $reg_keyword -RegistryValue $no_Pref
    Write-Output "Set to No Preference"
}
