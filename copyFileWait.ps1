. OpenFolderScript.ps1
$SourceFolder = "C:\Users\Bruce\Videos\Learn Windows 7\2nd"
$DestinationFolder = "F:\Ezekiel videos\2 - Learn Windows 7"
# Write-Host $SourceFolder
# Write-Host $DestinationFolder
#Get list of files in the source folder
$Files = Get-ChildItem $SourceFolder

#Loop through files and copy them to the destination folder
foreach ($File in $Files)
{
    #Copy the file
    Copy-Item -Path $File.FullName -Destination $DestinationFolder -Force

    #Wait 10 seconds
    Start-Sleep -Seconds 10
}