#!/bin/sh

tail -F /var/log/cron.log /var/log/supervisor/*.log &#!/bin/bash /var/log/thttpd.log

exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
