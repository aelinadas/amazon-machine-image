sudo apt update
sudo apt-cache search tomcat
sudo apt install -y tomcat9 tomcat9-admin
sudo systemctl enable tomcat9
sudo ufw allow from any port 8080 proto tcp
sudo systemctl status tomcat9