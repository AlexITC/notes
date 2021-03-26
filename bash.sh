
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

# convert all videos to mp3
for file in *.mp4; do ffmpeg -i "$file" "$file.mp3"; done

# trim video
ffmpeg -i input.mp4 -ss 00:00:11 -to 00:03:23 -c copy output.mp4

# video to gif
ffmpeg -i demo.webm -r 15 -vf scale=1024:-1 output2.gif

# trim video to gif
ffmpeg -i demo.webm -r 15 -vf scale=1024:-1 -ss 00:00:03 -to 00:00:06 output2.gif

# compress video
ffmpeg -i ipad-error.mp4 -vcodec libx265 -crf 28 ipad-error-new.mp4

# remove audio from video
ffmpeg -i VIDEO.mp4 -c copy -an VIDEO-new.mp4

# merge pdfs
pdftk 01.pdf 02.pdf 03.pdf cat output all.pdf

# rotate pdf (page 1 only)
pdftk planos.pdf rotate 1west output newplanos.pdf

# find who uses a port
lsof -i :8000

# find bound ports
netstat -lntp

# find bound sockets
ss -ap

# run command for each file in current directory
for file in *; do echo "$file"; done

# convert epoch (seconds) to date
date -d @1546097664

# print lines util the patern is found (including the pattern)
git log | sed '/7467bdc51ad57371ef20bffc2f79cc4a792eb97f/q'

# print lines until the pattern is found (excluding the pattern)
git log | sed '/7467bdc51ad57371ef20bffc2f79cc4a792eb97f/Q'

## disable ipv6, https://unix.stackexchange.com/a/366303/199541
vim /etc/sysctl.conf

# add
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

# reload conf
sudo sysctl -p
## end

# link directory
ln -s /source /link

# remove metadata from photos
exiftool -all= photo.jpg

# remove metadata from all photos in current directory
for file in *; do exiftool -all= "$file"; done

# resize unpartitioned volume
- this must display ext4: `sudo lsblk --fs /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01`
- resize: `sudo resize2fs /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01`

# forward port 3000 from my-server to the local port 30000
ssh -nNT -L 30000:localhost:3000 my-server

# create a ssh tunnel, local port 10002 is forwarded to the local 1002 port on the server-1
ssh -nNT -R 1002:localhost:10002 server-1

# generate ssh key
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# show key fingerprins from ssh known hosts
ssh-keygen -l -f ~/.ssh/known_hosts

# sync folder from a server over ssh to a local folder
rsync -avzhe ssh --progress the-server:/home/ubuntu/bcoin-data .

# sync folder recursively
rsync --progress --recursive /var/lib/postgresql/9.6/main /mnt/volume_bitcoin_explorer_lite/postgres/

# passwordless sudo on sudoers
- Edit with: `sudo visudo`
- Update the `%sudo` line to `%sudo   ALL=(ALL:ALL) NOPASSWD: ALL`

# find available shared libraries
- ldconfig -p

# zip files with password
zip --encrypt secure.zip file1 file2 file3

# diff the same repo
diff -ENwbur repos1/ repos2/

# resize image without keeping aspect ratio
convert paso-3.png -resize 1280x800\! 1280x800/paso-3.png

# count non-error logs on scala
echo `expr $(cat logs/application.log | wc -l) - $(grep -E "java|scala|error|exception" logs/application.log | wc -l)`

# view log for a systemd service
sudo journalctl -f -u lssd

# take matched regex only with grep (took 5 ms)
grep -o 'Request.*took*.ms'

# Clean logs in the form Request X took Y ms
cat logs/application.log | grep -v Ping | grep -o 'Request.*took.*ms,' | sed 's/(.*).*, / /' | sed 's/ms,/ms/'

# print second column on space separated rows
awk -F " " '{print $2}'

# sort lines by the 3rd column (space separated) using the numerical value
sort -n --key=3
