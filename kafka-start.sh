#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${DIR}/env.properties
source ${DIR}/kafka.properties

rm -rf ${dataDir}
nohup ${KAFKA_HOME}/bin/zookeeper-server-start.sh ${DIR}/zookeeper.properties > zookeeper.out 2>&1&

rm -rf ${log.dirs}
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${DIR}/kafka.properties > kafka.out 2>&1&
