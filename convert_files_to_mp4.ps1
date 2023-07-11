. OpenFolderScript.ps1
# Set the path to the folder containing the WebM files
$folderPath = OpenFolder

# Get all the WebM files in the folder
$webmFiles = Get-ChildItem $folderPath -Filter *.webm

# Loop through each WebM file and convert it to MP4
foreach ($file in $webmFiles) {
    # Set the output file name by replacing the extension with .mp4
    $outputFileName = [io.path]::ChangeExtension($file.Name, ".mp4")
    # Execute the ffmpeg command on the file
    & ffmpeg -i "$($file.FullName)" "$($file.DirectoryName)\$outputFileName"
}


# yt-dlp -f 'bv*[height=720][ext=mp4]+ba[ext=m4a]' --merge-output-format mp4 https://www.youtube.com/playlist?list=PLzj7TwUeMQ3jUeMoLReqNzzuKj7rdLhZ2 --playlist-start 3 -o '%(playlist_title)s/%(playlist_index)s-%(title)s.%(ext)s'