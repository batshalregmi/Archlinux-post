mkdir ~/.config
git clone git clone https://github.com/thevinter/styli.sh ~/.config/styli.sh
cd ~/.config/
sudo chmod +x styli.sh


sudo crontab -l > mycron
echo "@hourly ~/.config/styli.sh"
crontab mycron
rm mycron