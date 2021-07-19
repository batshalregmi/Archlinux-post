echo
echo "INSTALLING AUR SOFTWARE"
echo

mkdir ~/.build/

echo "Setting up paru"
git clone https://aur.archlinux.org/paru.git ~/.build/paru
cd ~/.build/paru
makepkg -si --noconfirm



PKGS=(
    'alacritty-git'
    'sassc-git'
    'mint-themes-git'
    'plymouth'
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    paru -S "$PKG" --noconfirm --needed
done