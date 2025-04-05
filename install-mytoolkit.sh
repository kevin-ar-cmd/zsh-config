#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "==> Setting up MyMessageToolkit..."
TOOLKIT_DIR="$HOME/MyMessageToolkit"

if [ ! -d "$TOOLKIT_DIR" ]; then
  echo "Toolkit not found. Cloning..."
  git clone https://github.com/kevin-ar-cmd/MyMessageToolkit.git "$TOOLKIT_DIR"
else
  echo "Toolkit already exists. Pulling updates..."
  cd "$TOOLKIT_DIR" && git pull
fi

echo "alias uikit='cd $TOOLKIT_DIR'" >> ~/.zshrc
echo "==> Done! Type 'uikit' to jump into the toolkit."
