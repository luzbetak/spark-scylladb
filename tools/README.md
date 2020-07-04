CQL
====

### Create Secondary Index
```
CREATE INDEX publishedIndex ON video2(ts_video_published);
DROP INDEX publishedindex;
```

### Setting ERROR Level
```
nodetool setlogginglevel ERROR
```

### Delete Special Characters
cat delete.sorted | awk '{print "DELETE FROM links WHERE domain=\x27"$1"\x27;"}'
sort -n -k2,2 temp.csv 
