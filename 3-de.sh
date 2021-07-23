mkdir ~/.config
git clone https://github.com/thevinter/styli.sh ~/.config/styli.sh
sudo chmod +x ~/.config/styli.sh/styli.sh


PKGS=(
    'cinnamon'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done
