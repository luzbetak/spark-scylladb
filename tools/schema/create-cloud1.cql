-- DROP KEYSPACE IF EXISTS cloud1;
CREATE KEYSPACE cloud1 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
-- CREATE KEYSPACE cloud1 WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'dc1' : 1 };
DESCRIBE KEYSPACES;
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.vdomain (
  domain text,
  total counter,
  PRIMARY KEY (domain)
)
WITH comment     = 'visited total domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.ldomain (
  domain text,
  total counter,
  PRIMARY KEY (domain)
)
WITH comment     = 'links total domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.visit (
    url text,
    PRIMARY KEY( url )
)
WITH comment='visited urls'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.banned_domain (
    domain text,
    language text,
    PRIMARY KEY( domain )
)
WITH comment='foreign domain language'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.friendly_domain (
    domain text,
    category text,
    PRIMARY KEY( domain )
)
WITH comment='friendly domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.links (
    url text,
    PRIMARY KEY( url )
)
WITH comment='links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.links1 (
    url text,
    PRIMARY KEY( url )
)
WITH comment='links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.links2 (
    url text,
    PRIMARY KEY( url )
)
WITH comment='links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
DESCRIBE KEYSPACE cloud1;
