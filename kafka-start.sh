#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${DIR}/env.properties

rm -rf /local/incoop/zookeeper
nohup ${KAFKA_HOME}/bin/zookeeper-server-start.sh ${DIR}/zookeeper.properties > zookeeper.out 2>&1&

rm -rf /local/incoop/kafka-logs
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${DIR}/kafka.properties > kafka.out 2>&1&
