alias taskid='git rev-parse --abbrev-ref HEAD | egrep -o "\d+"'
alias taskopen='open "https://www.wrike.com/open.htm?id=$(taskid)"'