#!/bin/bash

# sbt clean && sbt package
# sbt "run 69.13.39.46 /home/spider/raw/links1.csv" 
# nohup sbt "run 69.13.39.46 /root/links.csv" &
nohup sbt "run 69.13.39.46 /home/spider/raw/links2.csv" &
