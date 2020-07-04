-- DROP KEYSPACE IF EXISTS cloud2;
CREATE KEYSPACE IF NOT EXISTS cloud2 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud2.health (
  domain text,
  total counter,
  PRIMARY KEY (domain)
)
WITH comment     = 'health domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud2.links (
    url text,
    PRIMARY KEY( url )
)
WITH comment='links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
DESCRIBE KEYSPACES;
DESCRIBE KEYSPACE cloud2;
