#!/bin/sh
for N in `seq 10 14`
do
  echo "create node${N} ... "
##################   
docker run --rm -d --hostname node"${N}" --name node"${N}" \
  --net=hdnet --ip 172.77.77."${N}" \
  -v `pwd`:/vms \
  -v ~/ram/"${N}":/data \
  -v `pwd`/conf:/hadoop/conf:ro \
  -v /WLS/jdk180:/jdk180:ro \
  -v ~/ram/logs:/hadoop/logs \
  -e HADOOP_HOME=/hadoop \
  -e HADOOP_PREFIX=/hadoop \
  -e HADOOP_CONF_DIR=/hadoop/conf \
  -e YARN_CONF_DIR=/hadoop/conf \
  pcific/myhadoop \
  sleep 5.77h
##################   
done
echo --------------------------------
docker ps -a
echo --------------------------------
ping -c 1 node10
ping -c 1 node11
echo --------------------------------

