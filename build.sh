#!/bin/sh
TSTMP=`date "+%y%m%d%H%M"`
echo $TSTMP 
docker build -t pcific/myhadoop:$TSTMP -f Dockerfile.myhadoop .
docker tag pcific/myhadoop:$TSTMP pcific/myhadoop
