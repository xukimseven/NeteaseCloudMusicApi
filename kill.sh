#!/usr/bin/env bash
# netstat -antup
PORT=3000
lsof -i:$PORT|awk '{if($2~/[0-9]+/)print "kill -18 "$2}'|sh