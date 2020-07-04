#!/bin/bash -x

nodetool setlogginglevel org.apache.cassandra.service.StorageProxy OFF
nodetool setlogginglevel org.apache.cassandra OFF
nodetool setlogginglevel org.apache.cassandra.db OFF

