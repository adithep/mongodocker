#!/bin/bash
set -e

mkdir -p /data/db/rs1
mkdir -p /data/db/rs2
mkdir -p /data/db/rs3
mkdir -p /data/db/log
mkdir -p /data/db/pid
chown -R mongodb:mongodb /data/db

gosu mongodb mongod --config /conf/rs1.conf
gosu mongodb mongod --config /conf/rs2.conf
gosu mongodb mongod --config /conf/rs3.conf

sleep 5s
mongo </oplog.js
sleep 10s
mongo </oploguser.js

mv /start.sh /sstart.sh
mv /astart.sh /start.sh

gosu mongodb mongo --norc
