
# add app to unity dash
vim ~/.local/share/applications/jetbrains-idea-ce.desktop

# pretty print json
jq . <<< '{ "value": 1 }'
echo  '{ "value": 1 }' | jq .

# create file with size
truncate -s 24m example.file

# show line interval from file
X=1700
Y=2000
logfile=application.log
tail -n +$X $logfile | head -n $((Y-X+1))

# record voice
arecord filename.wav
sox -t alsa default filename.wav

# filter by stacktrace
grep -P "(WARN|ERROR|^\tat |Exception|^Caused by: |\t... \d+ more)"

# grep IP addresses
grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

# convert video to mp3
ffmpeg -i video.mp4 audio.mp3

# trim video
ffmpeg -i input.mp4 -ss 00:00:11 -to 00:01:12 -c copy output.mp4
