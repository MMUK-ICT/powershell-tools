$folderPath = "C:\Users\BRUCE\Documents\diaken stuff\statements\printouts\"
# $logFilePath = "C:\Users\BRUCE\Documents\diaken stuff\statements\print-log.txt"

# Get all files in the folder
$files = Get-ChildItem -Path $folderPath -File | Sort-Object -Property LastWriteTime

# Loop through each file and print it
foreach ($file in $files) {
    $fileName = $file.FullName
    Write-Host "Printing file: $fileName"

    # Print the file
    Start-Process -FilePath $fileName -Verb Print -PassThru | Out-Null

    # Append the file name to the log file
    Add-Content -Path $logFilePath -Value "Printed: $fileName"
}

$delConfirm = (Read-Host -Prompt "Did they print successfully? (y/n)").Trim()
if("y" -ieq $delConfirm){
    foreach($file in $files){
        $fileName = $file.FullName
        Write-Host "Deleting file: $fileName"
        Remove-Item -Path $fileName -Force
    }
}

else {
    "Sorry!"
    Exit
}