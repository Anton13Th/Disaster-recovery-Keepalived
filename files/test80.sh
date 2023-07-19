#!/bin/bash
if [[ $(netstat -tln | grep LISTEN | grep :80) ]] && [[ -f /var/www/html/index.html ]]; then
        exit 0
else
        systemctl stop keepalived
fi
