-- ------------------------------------------------------------------------------------------------------ --                                                                                                        
DROP KEYSPACE IF EXISTS store;
CREATE KEYSPACE store WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
DESCRIBE KEYSPACES;
-- ------------------------------------------------------------------------------------------------------ --
CREATE TABLE store.web (
    url text,
    dt timestamp,
    title text,
    body text,
    category text,
    score float,
    PRIMARY KEY (url)
) WITH comment    = 'web store'
  AND compression = { 'sstable_compression' : '' }
  AND compaction  = { 'class' :  'LeveledCompactionStrategy' };

-- ------------------------------------------------------------------------------------------------------ --
-- CREATE TABLE store.web (
--     url text,
--     dt timestamp,
--     title text,
--     body text,
--     category text,
--     score float,
--     PRIMARY KEY (url, dt)
-- ) WITH CLUSTERING ORDER BY (dt DESC)
--   AND comment     = 'web store'
--   AND compression = { 'sstable_compression' : '' }
--   AND compaction  = { 'class' :  'LeveledCompactionStrategy' };
-- ------------------------------------------------------------------------------------------------------ --
DESCRIBE store 
