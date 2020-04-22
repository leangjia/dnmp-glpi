#!/bin/bash
# @auther <281388879@qq.com>

echo "info: nginx non-daemon startup"
nginx -c /etc/nginx/nginx.conf
tail -f /dev/null