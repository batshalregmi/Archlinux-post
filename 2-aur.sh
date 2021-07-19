echo
echo "INSTALLING AUR SOFTWARE"
echo

mkdir ~/.build/

echo "Setting up paru"
git clone https://aur.archlinux.org/paru.git ~/.build/paru
cd ~/.build/paru
makepkg -si



PKGS=(
    'alacritty-git'   
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo paru -S "$PKG" --noconfirm --needed
done