# UNIX COMMANDS
alias upg="sudo apt update && sudo apt upgrade"

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
alias code="cd $HOME/code"

# Docker
alias dockerremove='docker container rm -f $(docker ps -aq)'
alias dockerremoveimg='docker rmi -f $(docker images -q)'
alias dockerkill='docker container kill $(docker ps -aq)'
alias dockerdontrestart='docker container update --restart=no $(docker ps -aq)'
alias dcomposer='docker run -v `pwd`:/app composer'
alias dart="docker-compose exec app php artisan"
alias dce="docker-compose exec app"
alias dup="dockerkill | docker-compose up -d"

alias dlive='function _dlive() { docker container run --rm --pid=host -v `pwd`:/var/www -p ${${1}:-8080}:${${1}:-8080} -e PORT=${${1}:-8080} letsgoi/live-server };_dlive'
