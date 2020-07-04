#!/usr/bin/perl                                                                                                                                                                                                                                                
#----------------------------------------------------------------------------------------------------------------------------#
use strict;
use warnings;
use DBI;
use Data::Dumper;
#----------------------------------------------------------------------------------------------------------------------------#
# CREATE TABLE store.web (
#     url text,
#     dt timestamp,
#     body text,
#     category text,
#     score float,
#     title text,
#     PRIMARY KEY (url, dt)
# ) WITH CLUSTERING ORDER BY (dt DESC)
#----------------------------------------------------------------------------------------------------------------------------#
sub test_insert {

    # my $dbh = DBI->connect("dbi:Cassandra:host=localhost;keyspace=store", $user, $password, { RaiseError => 1 });
    my $dbh = DBI->connect("dbi:Cassandra:host=69.13.39.46;keyspace=store",  { RaiseError => 1 });

    #----------------------------------------------------------------------------------------------------#
    my $SQL = "INSERT INTO store.web (url, dt, body, category, score, title) 
            VALUES (
                'http://pacific-design.com/Java/',
                toTimestamp(now()), 
                'One is body',
                'Two is category',
                4.25,
                'Java'
            )
          ";
    $dbh->do($SQL, { Consistency => "quorum" });

    $dbh->disconnect;

}
#----------------------------------------------------------------------------------------------------------------------------#
sub test_select {
    
    my $dbh = DBI->connect("dbi:Cassandra:host=69.13.39.46;keyspace=store",  { RaiseError => 1 });
    
    my $rows = $dbh->selectall_arrayref("SELECT url, dt, body, category, score, title FROM store.web");
    for my $row (@$rows) {

        print @$row[0];
        print "\n------------------------------------------------------------\n";
        print Dumper($row);
    }

    $dbh->disconnect;

}
#----------------------------------------------------------------------------------------------------------------------------#

# &test_insert();

&test_select();

