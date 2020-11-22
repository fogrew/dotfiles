# NGINX aliases
local ngid="/usr/local/etc/nginx"

alias sites="subl $ngid/"

alias nginx.logs.error="tail -250f $ngid/logs/error.log"
alias nginx.logs.access="tail -250f $ngid/logs/access.log"

# TODO: add function to getting logs of projects
alias nginx.logs.default.access="tail -250f $ngid/logs/default.access.log"
alias nginx.logs.default-ssl.access="tail -250f $ngid/logs/default-ssl.access.log"