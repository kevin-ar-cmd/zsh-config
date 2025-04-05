cat > ~/zsh-config/setup-zsh.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

# ----------------------------------------------------------
# ZSH Setup Script for Termux by kevin-ar-cmd
# Installs Oh My Zsh, Powerlevel10k, useful plugins, and configures zsh
# ----------------------------------------------------------

set -e

echo "==> Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "==> Installing Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  "\$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

echo "==> Installing Zsh plugins..."

git clone https://github.com/zsh-users/zsh-autosuggestions \
  "\$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  "\$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

echo "==> Writing .zshrc config..."

cat > ~/.zshrc << 'ZZZ'
export ZSH="\$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source \$ZSH/oh-my-zsh.sh

# Aliases
alias ll='ls -la --color=auto'
alias ls='ls --color=auto'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gp='git push'
alias gpull='git pull origin \$(git rev-parse --abbrev-ref HEAD)'
alias gpush='git push origin \$(git rev-parse --abbrev-ref HEAD)'
alias nr='npm run'
alias ni='npm install'
alias ns='npm start'
alias uikit='cd ~/MyMessageToolkit'
alias update='pkg update && pkg upgrade -y'

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
export PATH="\$HOME/bin:\$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

echo -e "\033[1;32mWelcome back, kevin-ar-cmd! Ready to code like a boss.\033[0m"

if command -v neofetch >/dev/null; then
  neofetch
fi
ZZZ

echo ""
echo "==> Done! Type 'zsh' to start your new shell."
EOF
