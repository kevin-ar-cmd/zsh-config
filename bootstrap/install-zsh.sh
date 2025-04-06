#!/data/data/com.termux/files/usr/bin/bash
# install-zsh.sh - Bootstrap Zsh with Oh My Zsh and your custom config for Termux

echo ">>> Installing zsh..."
pkg install zsh -y

echo ">>> Installing git..."
pkg install git -y

echo ">>> Installing wget & curl..."
pkg install wget curl -y

echo ">>> Installing oh-my-zsh..."
export ZSH="$HOME/.oh-my-zsh"
rm -rf $ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ">>> Cloning Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k

echo ">>> Setting Powerlevel10k theme..."
sed -i 's|^ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' $HOME/.zshrc

echo ">>> Copying custom .zshrc..."
cp $HOME/zsh-config/.zshrc $HOME/.zshrc

echo ">>> Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting

echo ">>> Done! Launching zsh..."
chsh -s zsh
exec zsh
