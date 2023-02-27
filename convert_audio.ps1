# Convert any audio file to mp3 at a 64Kbps bitrate
. OpenFileScript.ps1
$filePath = Open-File .
$file_extension = [System.IO.Path]::GetExtension($filePath)
$file_name = [System.IO.Path]::GetFileNameWithoutExtension($filePath)
$new_file_name = "$file_name"+"_conv"+"$file_extension"
Write-Host $new_file_name

ffmpeg -v debug -i $file_path -c:a libmp3lame -b:a 64k -ac 2 -ar 44100 -vn $new_file_name