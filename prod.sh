#!/usr/bin/env bash
PORT=3000
lsof -i:$PORT|awk '{if($2~/[0-9]+/)print "kill -17 "$2}'|sh
nohup node app.js &