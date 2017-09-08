# UNIX COMMANDS
alias upg="sudo apt update && sudo apt upgrade"

# SOFTWARE
alias sb="subl ."

# GIT
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"
alias gp="git push"
alias nah="git reset --hard;git clean -df;"

# Artisan, PHP, Tests
alias art="php artisan"
alias t="vendor/bin/phpunit"
alias tf="t --filter "
alias mt="make test"
mtf() {
    mt TEST_ARGS="--filter $1"
}

# Folders
alias home="cd ~"
alias code="cd $HOME/Desarrollo/www"

# Docker
alias dockerremove='docker rm -f $(docker ps -aq)'
alias dockerremoveimg='docker rmi $(docker images -q)'
alias dockerkill='docker kill $(docker ps -aq)'
alias dcomposer='docker run -v `pwd`:/app composer/composer'
alias dart="docker-compose exec app php artisan"