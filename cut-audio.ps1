#Cut audio file using ffmpeg
. OpenFileScript.ps1
$filePath = Open-File $env:USERPROFILE
$file_extension = [System.IO.Path]::GetExtension($filePath)
$file_name = [System.IO.Path]::GetFileNameWithoutExtension($filePath)
$new_file_name = "$file_name"+"_cut"+"$file_extension"
$start_from = Read-Host -Prompt "Enter the timestamp to start from: (e.g. 00:00:00)"
$end_at = Read-Host -Prompt "Enter the timestamp to end at: (e.g. 00:00:00)"


ffmpeg -ss $start_from -i $filePath -t $end_at -c copy $new_file_name