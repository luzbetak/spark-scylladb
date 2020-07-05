#!/usr/bin/env python3.8

from cassandra.cluster import Cluster

#-------------------------------------------------------------------------------------#
def count_rows(table):
    cluster = Cluster(['127.0.0.1'])
    session = cluster.connect()
    
    SQL = "SELECT count(*) from {}".format(table)
    result = session.execute(SQL)
    
    count = 0
    for row in result: # will only be 1 row
        count += row.count
    
    print("Total {} = {}".format(table, count))

#-------------------------------------------------------------------------------------#
if __name__ == "__main__":
    count_rows("cloud1.visit")    
    # count_rows("cloud1.links")    
