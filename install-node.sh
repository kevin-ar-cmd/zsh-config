#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "==> Installing Node.js and npm..."
pkg install -y nodejs

echo "==> Installing global npm tools..."
npm install -g npm nodemon serve
