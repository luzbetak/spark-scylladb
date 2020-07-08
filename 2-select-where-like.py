#!/usr/bin/env python3.8

from cassandra.cluster import Cluster

#-------------------------------------------------------------------------------------#
def search(table, term):
    cluster = Cluster(['127.0.0.1'])
    session = cluster.connect()
    
    SQL = "SELECT url FROM {} WHERE url LIKE '%{}%' ALLOW FILTERING".format(table, term)
    print(SQL)
    result = session.execute(SQL)
    
    for row in result:
        print(row.url)   
    

#-------------------------------------------------------------------------------------#
if __name__ == "__main__":
    search("cloud1.links1", "health")    


