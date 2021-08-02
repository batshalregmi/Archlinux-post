echo
echo "INSTALLING AUR SOFTWARE"
echo

mkdir ~/.build/

echo "Setting up paru"
git clone https://aur.archlinux.org/paru.git ~/.build/paru
cd ~/.build/paru
makepkg -si --noconfirm

PKGS=(
    'sassc-git'
    'mint-themes-git'
    'plymouth'
    'optimus-manager'
    'optimus-manager-qt'
    'ttf-jetbrains-mono'
    'lightdm-webkit2-greeter'
    'lightdm-webkit-theme-aether'
    'zsh-syntax-highlighting'
    'autojump'
    'zsh-autosuggestions'
)

fc-cache

sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = lightdm-webkit-theme-aether #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf

touch ~/.cache/zshhistory
mkdir ~/.config/zsh

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    paru -S "$PKG" --noconfirm --needed
done


#do this last https://github.com/iamsubhranil/Rice/blob/master/lightdm-webkit2-greeter_executive.md