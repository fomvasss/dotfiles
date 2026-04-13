#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
OS=$(uname)

backup_and_link() {
    local src="$1"
    local dst="$2"

    if [[ -e "$dst" && ! -L "$dst" ]]; then
        mv "$dst" "${dst}.backup_$(date +%Y%m%d_%H%M%S)"
        echo "Backup: $dst"
    fi

    ln -sf "$src" "$dst"
}

# Symlinks для claude
mkdir -p ~/.claude
backup_and_link "$DOTFILES_DIR/claude/CLAUDE.md" ~/.claude/CLAUDE.md

# Symlinks для git
backup_and_link "$DOTFILES_DIR/git/.gitconfig"        ~/.gitconfig
backup_and_link "$DOTFILES_DIR/git/.gitignore_global" ~/.gitignore_global

# Symlinks для bash
backup_and_link "$DOTFILES_DIR/bash/.bashrc"       ~/.bashrc
backup_and_link "$DOTFILES_DIR/bash/.bash_aliases" ~/.bash_aliases

# Symlinks для vim / tmux
backup_and_link "$DOTFILES_DIR/.vimrc"     ~/.vimrc
backup_and_link "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf

# Symlinks для zsh
backup_and_link "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc

# Symlinks для copilot
if [[ "$OS" == "Darwin" ]]; then
    COPILOT_VSCODE_DIR="$HOME/Library/Application Support/Code/User/prompts"
elif [[ "$OS" == "Linux" ]]; then
    COPILOT_VSCODE_DIR="$HOME/.config/Code/User/prompts"
fi
mkdir -p "$COPILOT_VSCODE_DIR"
backup_and_link "$DOTFILES_DIR/copilot/copilot-instructions.md" "$COPILOT_VSCODE_DIR/copilot-instructions.md"

COPILOT_INTELLIJ_DIR="$HOME/.config/github-copilot/intellij"
mkdir -p "$COPILOT_INTELLIJ_DIR"
backup_and_link "$DOTFILES_DIR/copilot/copilot-instructions.md" "$COPILOT_INTELLIJ_DIR/global-copilot-instructions.md"

# Специфічні пакети
if [[ "$OS" == "Darwin" ]]; then
    backup_and_link "$DOTFILES_DIR/bash/.bashrc.macos" ~/.bashrc.macos
    backup_and_link "$DOTFILES_DIR/zsh/.zshrc.macos"  ~/.zshrc.macos
    #brew install ...
elif [[ "$OS" == "Linux" ]]; then
    backup_and_link "$DOTFILES_DIR/bash/.bashrc.linux" ~/.bashrc.linux
    backup_and_link "$DOTFILES_DIR/zsh/.zshrc.linux"  ~/.zshrc.linux
    #sudo apt install ...
fi