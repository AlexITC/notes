
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

# install deb from terminal
sudo dpkg -i installer.deb

# record voice
arecord filename.wav
sox -t alsa default filename.wav

# filter by stacktrace
grep -P "(WARN|ERROR|^\tat |Exception|^Caused by: |\t... \d+ more)"

# grep IP addresses
grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

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

# resize unpartitioned volume
- this must display ext4: `sudo lsblk --fs /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01`
- resize: `sudo resize2fs /dev/disk/by-id/scsi-0DO_Volume_volume-nyc1-01`

# forward port 3000 from my-server to the local port 30000
ssh -nNT -L 30000:localhost:3000 my-server

# create a ssh tunnel, local port 10002 is forwarded to the local 1002 port on the server-1
ssh -nNT -R 1002:localhost:10002 server-1

# Dynamic Port Forwarding - socks proxy
ssh -nNT -D 2000 my-server

`localhost:2000` will be a socks proxy, curl can be used like: `curl --proxy 'socks5://127.0.0.1:2000' https://google.com`

# generate ssh key
ssh-keygen -t rsa -b 4096 -o -a 100 -C "your_email@example.com"
ssh-keygen -t ed25519 -a 100

# show key fingerprins from ssh known hosts
ssh-keygen -l -f ~/.ssh/known_hosts

# sync folder from a server over ssh to a local folder
rsync -avzhe ssh --progress the-server:/home/ubuntu/bcoin-data .

# sync local folder to a server (results in ~/media/local-folder)
rsync -avzhe ssh --progress local-folder the-server:~/media/

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

# Markdown to pdf
- Install node package: npm install markdown-pdf
- Convert the doc: ./node_modules/.bin/markdown-pdf /path/to/doc.md
- The output is stored in the input path as `doc.pdf`

# Simple TCP server
Suppose you want to make sure that a port can accept connections from external addresses, there are some commands that can be used:
1. `ncat -l 8080 --keep-open --exec "/bin/cat"`
2. `socat TCP4-LISTEN:8080,fork EXEC:cat`
3. `nc -l -p 8080`

Option 1 and 2 return the same data that is received, and option 3 prints what's received, option 3 also works in a single connection only.

Test with `curl ip:8080`.

# scan pictures and merge them as pdf
scanimage --batch-prompt --batch-count=6 && convert out1.pnm out2.pnm out3.pnm out4.pnm out5.pnm out6.pnm out.pdf

