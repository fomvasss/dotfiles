# HOMESTEAD
alias hhh="cd ~/Homestead && vagrant ssh"
alias hup="cd ~/Homestead && vagrant up"

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

#Docker
alias dlb="cd ~/Work/laradock/; docker-compose exec --user=laradock workspace bash"

# ZSH (reload zsh)
alias zshr=". ~/.zshrc"


# NAVIGATION
alias ..="cd .."
alias ...="cd ../.."
alias h='cd ~'
alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# LINUX
alias swof='sudo swapoff -a; sudo swapon -a'

# GIT
alias gst='git status'
alias gct='git commit'

# LARAVEL
alias pa="php artisan"
alias par="php artisan routes"
alias pam="php artisan migrate"
alias pam:r="php artisan migrate:refresh"
alias pam:roll="php artisan migrate:rollback"
alias pam:rs="php artisan migrate:refresh --seed"
alias pda="php artisan dumpautoload"
alias cu="composer update"
alias ci="composer install"
alias cda="composer dump-autoload -o"
alias vu='cd ~/Homestead && vagrant up'
alias vs='vagrant suspend'
alias vssh='vagrant ssh'

#APIDOC
alias apdrh='apidoc -i app/Http -o public/docs'
alias apdr='apidoc -i app/Http/Controllers/Api -o public/docs'
alias apdrh='apidoc -i app/Http -o public/docs'
alias apdra='apidoc -i app -o public/docs'
alias apdrcc='apidoc -i app/Http/Controllers/Api -o public/docs/client;apidoc -i control/src/Http/Controllers/Api -o public/docs/control'

#GULP
alias gbt='./node_modules/.bin/gulp build; ./node_modules/.bin/gulp test --noinline --nohtmlmin'
