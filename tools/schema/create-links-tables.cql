-- ----------------------------------------------------------- --
DROP TABLE cloud1.links;

CREATE TABLE IF NOT EXISTS
cloud1.links (
    url text,
    domain text,
    PRIMARY KEY( url )
)
WITH comment='web page links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
DESCRIBE KEYSPACE cloud1;
