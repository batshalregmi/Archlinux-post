echo
echo "Activating Services"
echo

sudo systemctl enable --now cups.service

chsh -s $(which zsh)