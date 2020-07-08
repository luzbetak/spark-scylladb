Spark Scylla DB
===============

### Count total rows in the table
```
$ cqlsh -e "copy keyspace.table_name (first_partition_key_name) to '/dev/null'" | sed -n 5p | sed 's/ .*//

$ nodetool cfhistograms

```

