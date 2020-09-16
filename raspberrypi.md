# Enable ssh
See: https://www.raspberrypi.org/documentation/remote-access/ssh/README.md

On headless OS, add an empty file called `ssh` on the `boot` partition to get ssh enabled.

# Find pi IP on local network
ping raspberrypi.local

# Defaults
user: pi
password: raspberry

# install java 8
Run: `sudo apt update && sudo apt-get install openjdk-8-jre-headless`
