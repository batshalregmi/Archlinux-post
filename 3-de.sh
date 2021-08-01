echo
echo "INSTALLING DE"
echo

PKGS=(
    'cinnamon'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done
