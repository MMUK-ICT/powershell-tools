function OpenFolder([string] $inputMessage)  
{Add-Type -AssemblyName System.Windows.Forms
    $folderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $folderBrowserDialog.RootFolder = [System.Environment+SpecialFolder]::MyComputer
    $folderBrowserDialog.Description = $inputMessage
    $result = $folderBrowserDialog.ShowDialog()
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $selectedFolder = $folderBrowserDialog.SelectedPath
    }
    return $selectedFolder
}