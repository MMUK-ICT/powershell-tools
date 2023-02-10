function Open-File([string] $initialDirectory){

    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "All files (*.*)| *.*"
    $OpenFileDialog.ShowDialog() |  Out-Null

    return $OpenFileDialog.filename
} 

# $OpenFile=Open-File $env:USERPROFILE 

# if ($OpenFile -ne "") 
# {
#     echo "You choose FileName: $OpenFile" 
# } 
# else 
# {
#     echo "No File was chosen"
# }