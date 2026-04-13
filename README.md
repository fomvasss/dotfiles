# Dotfiles

## Встановлення

```bash
git clone git@github.com:fomvasss/dotfiles.git ~/.dotfiles
chmod +x /home/hp/.dotfiles/install.sh
cd ~/.dotfiles && ./install.sh
```

## Структура

```
~/.dotfiles/
├── bash/
│   ├── .bashrc          # спільне
│   ├── .bash_aliases    # аліаси
│   ├── .bashrc.linux    # тільки Linux
│   └── .bashrc.macos    # тільки macOS
├── zsh/
│   ├── .zshrc           # спільне (oh-my-zsh)
│   ├── .zshrc.linux     # тільки Linux
│   └── .zshrc.macos     # тільки macOS
├── git/
│   ├── .gitconfig
│   └── .gitignore_global  # глобальний gitignore для всіх репо
├── copilot/
│   └── copilot-instructions.md  # глобальні інструкції для GitHub Copilot
├── claude/
│   └── CLAUDE.md
├── .vimrc
├── .tmux.conf
└── install.sh
```

## Що підключається

| Файл в репо | Symlink |
|---|---|
| `bash/.bashrc` | `~/.bashrc` |
| `bash/.bash_aliases` | `~/.bash_aliases` |
| `bash/.bashrc.linux` | `~/.bashrc.linux` |
| `bash/.bashrc.macos` | `~/.bashrc.macos` |
| `zsh/.zshrc` | `~/.zshrc` |
| `zsh/.zshrc.linux` | `~/.zshrc.linux` |
| `zsh/.zshrc.macos` | `~/.zshrc.macos` |
| `git/.gitconfig` | `~/.gitconfig` |
| `git/.gitignore_global` | `~/.gitignore_global` |
| `copilot/copilot-instructions.md` | `~/.config/Code/User/prompts/copilot-instructions.md` |
| `claude/CLAUDE.md` | `~/.claude/CLAUDE.md` |
| `.vimrc` | `~/.vimrc` |
| `.tmux.conf` | `~/.tmux.conf` |