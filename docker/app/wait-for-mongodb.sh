#!/bin/sh

: ${MONGO_HOST:=mongo1}
: ${MONGO_PORT:=30001}

until nc -z $MONGO_HOST $MONGO_PORT
do
    echo "Waiting for Mongo ($MONGO_HOST:$MONGO_PORT) to start..."
    sleep 0.5
done

eval $*
