#!/bin/bash
set -e

gosu mongodb mongod --config /conf/rs1.conf
gosu mongodb mongod --config /conf/rs2.conf
gosu mongodb mongod --config /conf/rs3.conf

sleep 7s

gosu mongodb mongo --norc

