#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${DIR}/env.properties

${KAFKA_HOME}/bin/kafka-server-stop.sh

${KAFKA_HOME}/bin/zookeeper-server-stop.sh

sleep 3

tokill=`ps -ef | grep java | grep 'zookeeper.properties' | awk '{print $2}'`
kill -9 $tokill
