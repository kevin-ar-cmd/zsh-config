#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "==> Updating packages..."
pkg update && pkg upgrade -y

echo "==> Installing core packages..."
pkg install -y git curl wget zsh neofetch
