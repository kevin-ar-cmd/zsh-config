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

