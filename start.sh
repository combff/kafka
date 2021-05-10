#!/bin/bash

useradd -u $UESR_ID user -d /home/kafka -s /bin/bash 
usermod -u $UESR_ID user

su user -c "bin/kafka-server-start.sh config/server.properties"
su user -c "bin/kafka-server-start.sh config/zookeeper.properties"