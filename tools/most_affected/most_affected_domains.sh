#!/bin/bash

clear;
cqlsh 127.0.0.1 < export.cql
sort -n -k2,2 temp.csv | tail -50 | tee temp
rm -f temp.csv
cat temp

