sudo systemctl enable --now cups.service


echo "exec cinnamon-session" >> ~/.xinitrc

crontab -l >mycron
echo "@hourly ~/.config/styli.sh/styli.sh" >>mycron
crontab mycron
rm mycron