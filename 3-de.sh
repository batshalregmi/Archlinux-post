mkdir ~/.config
git clone git clone https://github.com/thevinter/styli.sh ~/.config/styli.sh
cd ~/.config/styli.sh
sudo chmod +x styli.sh


sudo crontab -l > mycron
echo "@hourly ~/.config/styli.sh"
crontab mycron
rm mycron



PKGS=(
    'cinnamon'   
)

echo "exec cinnamon-session" >> ~/.xinitrc

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

