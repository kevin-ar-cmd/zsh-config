# Termux Zsh + Powerlevel10k Setup Script
pkg update -y && pkg upgrade -y
pkg install -y zsh git curl

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Set theme in .zshrc
sed -i 's|^ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc

# Optional: fix common Oh My Zsh Termux paths
grep -qF "termux" ~/.zshrc || cat << 'EOF' >> ~/.zshrc

# Fix for Termux
export LANG=en_US.UTF-8
EOF

# Reload zsh config
source ~/.zshrc

# Launch zsh
zsh
