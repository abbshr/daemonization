#!/bin/bash

# set file creation mask
umask 0

# change work dir
cd /

# signal handles
trap '' SIGHUP
trap '' SIGINT
trap '' SIGTERM

# set io redirection
eval exec </null
eval exec >/dev/null
eval exec 2>&1

# close other fds
eval exec {3..255}\>\&-

# execute worker process
$*