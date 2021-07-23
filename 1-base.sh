echo
echo "INSTALLING BASE PACKAGES"
echo

PKGS=(
    'xorg'
    'xorg-xinit'
    'git'
    'nvidia'
    'nvidia-utils'
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
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
