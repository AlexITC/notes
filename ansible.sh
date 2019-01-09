# execute with sudo
ansible cryptocoinalerts -a "whoami" --become --ask-become-pass

# execute with play user
ansible cryptocoinalerts -a "whoami" --become --ask-become-pass --become-user play

# specify inventory file
ansible -i hosts.ini alerts-ui -a "whoami"

# exec module with arguments
ansible -i hosts.ini -m  shell -a 'uname -a' alerts-server


# playbooks
# run a playbook
ansible-playbook -i hosts.ini apache.yaml --become --ask-become-pass


# troublesoothing
# remote node being ubuntu 16.04 requires python2
sudo apt-get install python-simplejson

ansible-vault encrypt config/alerts-server.env

ansible-vault edit foo.yml

ansible-vault encrypt_string --vault-id .vault 'string'
