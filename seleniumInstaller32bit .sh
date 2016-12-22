sudo apt-get install python-pip
sudo apt-get install unzip
sudo pip install -U selenium

# Geckodriver not running with firefox 50.0.1, so should be install downgrade 45.0.2 version
sudo apt-get remove firefox
sudo apt-get install firefox=45.0.2+build1-0ubuntu1

# Hold firefox version
sudo apt-mark hold firefox

# If you want to update firefox version, please uncomment bottom line
# sudo apt-mark unhold firefox

# Create all file for drivers
mkdir /home/$USER/.seleniumdrivers
cd /home/$USER/.seleniumdrivers

# Download and configure mozilla driver
wget https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux32.tar.gz --no-check-certificate
tar -xvzf geckodriver-v0.11.1-linux32.tar.gz
rm geckodriver-v0.11.1-linux32.tar.gz
chmod +x geckodriver

# download and configure chrome driver
wget https://chromedriver.storage.googleapis.com/2.26/chromedriver_linux32.zip
unzip chromedriver_linux32.zip
rm chromedriver_linux32.zip
chmod +x chromedriver

# Add file linux path
echo "# Selenium Drivers Path" >> /home/$USER/.bashrc
echo "PATH=$PATH:/home/$USER/.seleniumdrivers" >> /home/$USER/.bashrc

clear
echo "Installiation Complete :)"
