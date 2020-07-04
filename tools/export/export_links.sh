#!/bin/bash

cqlsh 10.0.0.1 -e "COPY cloud1.links2 TO '/home/tmp/links2.dat' WITH DELIMITER = ' ';"
