echo
echo "INSTALLING BASE PACKAGES"
echo

PKGS=(
    'xorg'
    'git'
    'nvidia'
    'nvidia-utils'
    'nvidia-settings'
    'base-devel'
    'linux-headers'
    'cups'
    'cups-pdf'
    'ghostscript'
    'gsfonts'
    'hplip'
    'system-config-printer'
    'nano'
    'bash-completion'
    'cronie'
    'curl'
    'numlockx'
    'unrar'
    'unzip'
    'firefox'
    'feh'
    'libsecret'
    'gnome-keyring'
    'libreoffice-fresh'
    'neofetch'
    'reflector'
    'pacman-contrib'
    'lightdm'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
