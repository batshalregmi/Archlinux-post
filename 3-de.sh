mkdir ~/.config
git clone https://github.com/thevinter/styli.sh ~/.config/styli.sh
sudo chmod +x ~/.config/styli.sh/styli.sh


crontab -l > mycron
echo "@hourly ~/.config/styli.sh/styli.sh" >> mycron
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

