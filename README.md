1.# idp-trafficgen2
       
Download and install the Ubuntu 18.0.4 located here https://releases.ubuntu.com/18.04/ubuntu-18.04.6-desktop-amd64.iso.  
ssh to your device with your username/passwd and sudu su to root
Connect your Desktop to the internet and make sure DNS is configured properly
sudo apt-get install openssh-server
sudo apt-get update
sudo apt-get install -y git curl
sudo git clone https://github.com/stevevoto/idp-trafficgen2
cd idp-trafficgen2
chmod 755 install.sh 
Run ./install.sh
When Complete check sytemctl is-active idp-trafficgen.service
