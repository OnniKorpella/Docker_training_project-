#!/bin/bash

service nginx start
spawn-fcgi -p 8080 ./hello
# serv -s reload
tail -f /dev/null


 