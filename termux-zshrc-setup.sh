#!/data/data/com.termux/files/usr/bin/bash
# Termux Zsh + Oh My Zsh + Powerlevel10k Setup Script (Interactive)

set -e  # stop on first error

echo "========================================"
echo " 🚀 Termux Zsh Environment Bootstrapper"
echo "========================================"

# Update packages
pkg update -y && pkg upgrade -y
pkg install -y zsh git curl

# Install Oh My Zsh (non-interactive, overwrite if exists)
export RUNZSH=no  # don’t auto-switch yet
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

# Install Powerlevel10k theme
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ~/.oh-my-zsh/custom/themes/powerlevel10k
fi

# === Interactive Theme Selection ===
echo ""
echo "Select your preferred Zsh theme:"
options=("robbyrussell (default)" "agnoster" "powerlevel10k (recommended)" "random")
select opt in "${options[@]}"; do
  case $REPLY in
    1) theme="robbyrussell";;
    2) theme="agnoster";;
    3) theme="powerlevel10k/powerlevel10k";;
    4) theme="random";;
    *) theme="powerlevel10k/powerlevel10k";; # fallback default
  esac
  break
done

# Apply selected theme
sed -i "s|^ZSH_THEME=.*|ZSH_THEME=\"$theme\"|" ~/.zshrc

# === Interactive Plugin Selection ===
echo ""
echo "Select plugins to enable (space-separated, e.g., 'git z') [default: git]:"
read -r plugins
plugins=${plugins:-git}

# Apply plugins
sed -i "s|^plugins=.*|plugins=($plugins)|" ~/.zshrc

# === Termux-specific Fixes ===
grep -qF "LANG=en_US.UTF-8" ~/.zshrc || cat << 'EOF' >> ~/.zshrc

# Fix for Termux locale
export LANG=en_US.UTF-8
EOF

echo ""
echo "✅ Configuration complete!"
echo "   Theme   -> $theme"
echo "   Plugins -> $plugins"
echo ""
echo "Restarting into Zsh..."
exec zsh
