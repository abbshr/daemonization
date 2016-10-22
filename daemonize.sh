#!/bin/bash
DIR=$(cd `dirname $BASH_SOURCE` && pwd)
setsid bash $DIR/agent.sh $* &
exit 0