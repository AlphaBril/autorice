#!/bin/bash

python3 -m pip install --user ansible
ansible-pull -U "https://github.com/alphabril/autorice" -K ansible/main.yml -t all,reboot