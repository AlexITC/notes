
# Tricks
https://ohshitgit.com/

# after downloading a project
git config user.name "Alexis Hernandez"
git config user.email "[EMAIL]"
git config pull.rebase true
git config core.sshCommand "ssh -i ~/.ssh/other_key_id_rsa"

# use pgp2 for signing work
git config --global gpg.program gpg2

# sign commits by default
git config commit.gpgsign true

# select key for signing
git config user.signingkey KEYID

# delete remote branch
git push origin --delete remote-branch

# sync branches
git remote prune origin --dry-run

# list project developers
git log --format='%aN' | sort -u

# set remote url
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

# print remote url
git remote -v

# see changes in stash
git stash show -p stash@{1}

# see commit diff
git diff [COMMIT]^!

# update date on last commit
git commit --amend --date="$(date -R)"

# sync forked repo
git remote add artik git@github.com:artikcloud/leshan.git
git remote add upstream https://github.com/eclipse/leshan.git
git fetch upstream
git pull upstream master
git push

# change log between tags
git log v2018.01.14..v2018.01.21 --oneline

# submodules
git submodule init
git submodule update --init

# update branches from remote
git fetch --all --prune

# clone single tag
git clone -b '1.22' --single-branch --depth 1 https://github.com/google/leveldb.git

# clone with custom ssh key
git clone git@provider.com:userName/projectName.git --config core.sshCommand="ssh -i ~/location/to/private_ssh_key"

# get current commit hash
git rev-parse HEAD
