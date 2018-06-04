# execute with sudo
ansible cryptocoinalerts -a "whoami" --become --ask-become-pass

# execute with play user
ansible cryptocoinalerts -a "whoami" --become --ask-become-pass --become-user play

# specify inventory file
ansible -i hosts.ini alerts-ui -a "whoami"
