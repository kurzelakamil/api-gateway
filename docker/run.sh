#!/bin/bash
while ! `nc -z $CONFIG_SERVER $CONFIG_SERVER_PORT`;
    do sleep $SLEEP_TIME; echo "Waiting for $CONFIG_SERVER";done
while ! `nc -z $DISCOVERY_SERVER $DISCOVERY_SERVER_PORT`;
    do sleep $SLEEP_TIME; echo "Waiting for $DISCOVERY_SERVER";done
java -jar api-gateway.jar