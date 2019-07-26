## Install gpg2
- `sudo apt install gnupg2`

## Generate a new key
- `gpg2 --full-generate-key`

## Get the complete public key
- `gpg2 --armor --export [email@domain.com]`

## Add your public key to Github
- Go to https://github.com/settings/keys

## Setup git to use pgp2
- `git config --global gpg.program gpg2`

## Setup your signing key on a repository
- Get your key id with: `gpg2 --list-keys --keyid-format LONG`
- Set the key on the repo with: `git config user.signingkey [AABBCCDD........]`

## Create a signed commit
- `git commit -s`

## Troubleshooting
- Delete an existing key pair: `gpg2 --delete-secret-and-public-keys [key-id]`

## More detailed instructions
See https://blog.nemit.fi/verify-your-github-commits-2fb42bff6048
