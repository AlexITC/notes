# Set up wifi on home assistant

1. Identify the `hassos-boot` partition: `lsblk -o NAME,FSTYPE,LABEL,SIZE,MOUNTPOINT`
1. Mount it: `sudo mkdir /mnt/hassos-boot && sudo mount -t auto -v /dev/mmcblk0p1 /mnt/hassos-boot` (replace mmcblk0p1 by the identified partition).
1. Create the network config directory: `sudo mkdir -p /mnt/hassos-boot/CONFIG/network`
1. Create the config file (editing the content to match your settings [1]): `sudo vim /mnt/hassos-boot/CONFIG/network/my-network`
1. Unmount the partition: `sudo umount /dev/mmcblk0p1 -l` (replace mmcblk0p1 by the proper partition)

[1]: `my-network` file:

```
[connection]
id=my-network
uuid=5d98dcc8-df2d-45aa-acb3-edfb2a0b128b
type=802-11-wireless

[802-11-wireless]
mode=infrastructure
ssid=WIFI_NAME
#Uncomment below if your SSID is not broadcasted
#hidden=true

[802-11-wireless-security]
auth-alg=open
key-mgmt=wpa-psk
psk=WIFI_PASSWORD

[ipv4]
method=auto

[ipv6]
addr-gen-mode=stable-privacy
method=auto
```
