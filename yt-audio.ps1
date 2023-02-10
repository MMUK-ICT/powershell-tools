#Download Youtube Video as MP3 in best format, not entire playlist
$link = Read-Host -Prompt "Enter Video Link" 


yt-dlp -f 'ba' -x --audio-format mp3 --no-playlist $link -o '%(title)s.mp3'