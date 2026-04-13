# Спільні налаштування
export EDITOR=nano

# Специфічні для ОС
if [[ "$OSTYPE" == "darwin"* ]]; then
    [[ -f ~/.bashrc.macos ]] && source ~/.bashrc.macos
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    [[ -f ~/.bashrc.linux ]] && source ~/.bashrc.linux
fi