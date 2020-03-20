if [ ! -f ~/.zinit/bin/zinit.zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi

if [ -d /Users/tarik02/.zinit/bin/zmodules/Src ]; then
	module_path+=( "/Users/tarik02/.zinit/bin/zmodules/Src" )
    zmodload zdharma/zplugin
fi

source ~/.zinit/bin/zinit.zsh

autoload -U colors && colors

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zinit snippet OMZ::lib/functions.zsh
zinit snippet OMZ::lib/git.zsh

zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice as"completion" wait lucid
zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zinit snippet OMZ::plugins/github/github.plugin.zsh
zinit snippet OMZ::plugins/node/node.plugin.zsh
#zinit snippet OMZ::plugins/tmux/tmux.plugin.zsh
zinit snippet OMZ::plugins/ubuntu/ubuntu.plugin.zsh
zinit snippet OMZ::plugins/yarn/yarn.plugin.zsh
zinit snippet OMZ::plugins/laravel5/laravel5.plugin.zsh
#zinit snippet OMZ::plugins/colors/colors.plugin.zsh
#zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
zinit snippet OMZ::plugins/fasd/fasd.plugin.zsh

zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
zinit ice wait lucid
zinit light zdharma/fast-syntax-highlighting
zinit ice wait lucid
# zinit light zsh-users/zsh-completions
zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
    zsh-users/zsh-completions

zinit cdclear -q # <- forget completions provided up to this moment
setopt promptsubst

zinit snippet OMZ::themes/robbyrussell.zsh-theme
#zinit snippet OMZ::themes/blinks.zsh-theme


#zinit light direnv/direnv

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=grey,bold,underline"

setopt HIST_IGNORE_ALL_DUPS
unsetopt AUTO_CD

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
fpath=(/usr/local/share/zsh-completions $fpath)
# autoload -U compinit && compinit
# zmodload -i zsh/complist
zstyle ':completion:*' menu select

HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history

setopt append_history
setopt auto_pushd
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt interactive_comments
setopt long_list_jobs
setopt pipe_fail
setopt share_history
setopt no_rm_star_silent

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

PROMPT=''
PROMPT="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"
PROMPT+='${USERNAME} %{$reset_color%}: %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
### End of Zinit's installer chunk

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
