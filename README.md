# zsh-config

Custom Zsh configuration and modular bootstrap installers for Termux and Unix-based systems.

## Features

- **Oh My Zsh** installation with themes and plugins
- **Powerlevel10k** theme pre-configured
- Useful **Zsh aliases** for development
- Modular **bootstrap scripts** for:
  - Core tools
  - Zsh environment
  - Node.js & global npm packages
  - Python & developer utilities
  - MyMessageToolkit integration

---

## Getting Started

### 1. Clone the repository
```bash
git clone git@github.com:kevin-ar-cmd/zsh-config.git
cd zsh-config
```

#### Run any Bootstrap setup script 
```bash
bash bootstrap/install-core.sh        # Core packages
bash bootstrap/install-zsh.sh         # Zsh setup
bash bootstrap/install-node.sh        # Node.js
bash bootstrap/install-dev-tools.sh   # Dev tools (Python, fzf, etc.)
bash bootstrap/install-mytoolkit.sh   # Setup MyMessageToolkit
```

#### Files 
- **setup-zsh.sh**: Main Zsh environment setup script
- **bootstrap/**: Modular install scripts
- **.zshrc**: Config with aliases, plugins, and Powerlevel10k
- **.p10k.zsh**: (Optional) theme config if generated

### Notes

- Designed for Termux but works in most Unix environments
- Scripts are safe to re-run and update your system or config

- # Getting Started with zsh-config

This repository provides a custom Zsh configuration and modular bootstrap installers designed for Termux and Unix-based systems.

## Features

- **Oh My Zsh** installation with themes and plugins
- **Powerlevel10k** theme pre-configured
- Useful **Zsh aliases** for development
- Modular **bootstrap scripts** for:
  - Core tools
  - Zsh environment
  - Node.js & global npm packages
  - Python & developer utilities
  - MyMessageToolkit integration

---

## Steps to Get Started

### 1. Clone the Repository
Run the following commands in your terminal to clone the repository and navigate to its directory:
```bash
git clone git@github.com:kevin-ar-cmd/zsh-config.git
cd zsh-config
```

---

### 2. Run Bootstrap Setup Scripts
Choose the bootstrap scripts you want to execute based on your needs. Run them using the following commands:
```bash
bash bootstrap/install-core.sh        # Core packages
bash bootstrap/install-zsh.sh         # Zsh setup
bash bootstrap/install-node.sh        # Node.js
bash bootstrap/install-dev-tools.sh   # Dev tools (Python, fzf, etc.)
bash bootstrap/install-mytoolkit.sh   # Setup MyMessageToolkit
```

---

### 3. Explore Repository Files
- **setup-zsh.sh**: Main Zsh environment setup script.
- **bootstrap/**: Modular install scripts.
- **.zshrc**: Configuration file with aliases, plugins, and Powerlevel10k theme setup.
- **.p10k.zsh**: (Optional) Theme configuration file.

---

### Notes

- This setup is designed for Termux but works in most Unix environments.
- The scripts are safe to re-run to update your system or configurations.
- For additional details, refer to the repository's `README.md` or other documentation.

Enjoy your enhanced Zsh experience!
