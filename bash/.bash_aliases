#!/bin/bash

## Navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias h='cd ~'
alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## Laradock aliases
alias dcup="cd ~/Work/laradock/; docker compose up -d workspace php-fpm adminer nginx mysql redis elasticsearch"
alias dcexec='cd ~/Work/laradock/; docker compose exec --user=laradock workspace bash -c "cd /home/hp/Work/laravel && bash"'
alias dcexec80="cd ~/Work/laradock/; docker compose exec --user=laradock workspace-80 bash"
alias dcps="cd ~/Work/laradock/; docker compose ps"
alias dcdown="cd ~/Work/laradock/; docker compose down"
alias dcrn="cd ~/Work/laradock/; docker compose restart nginx"
alias dccd="cd ~/Work/laradock/;"

## Git aliases
alias gst='git status'
alias gct='git commit'

## Apidoc aliases
alias apd='apidoc -i app/Http -o public/docs'
alias apdapp='apidoc -i app -o public/docs'
alias apdau='apidoc -c public/docs/apidoc-auth.json -i app/Http/Auth -o public/docs/auth'
alias apdad='apidoc -c public/docs/apidoc-admin.json -i app/Http/Admin -o public/docs/admin'
alias apdcl='apidoc -c public/docs/apidoc-client.json -i app/Http/Client -o public/docs/client'
alias apda='apdau; apdad; apdcl;'

## Laravel artisan aliases
alias art='php artisan'
alias art-clear='php artisan optimize:clear'
alias art-migrate='php artisan migrate'
alias art-fresh-seed='php artisan migrate:fresh --seed'
alias art-routes='php artisan route:list'
alias art-tinker='php artisan tinker'
alias art-queue='php artisan queue:work'
alias art-queue-restart='php artisan queue:restart'
alias art-test='php artisan test'
alias art-make-controller='php artisan make:controller'
alias art-make-model='php artisan make:model'
alias art-make-migration='php artisan make:migration'
alias art-make-request='php artisan make:request'

alias myip="curl example.com -o /dev/null -w '%{local_ip}\n'"

alias gbt='./node_modules/.bin/gulp build; ./node_modules/.bin/gulp test --noinline --nohtmlmin'