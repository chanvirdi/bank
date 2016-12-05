#!/usr/bin/perl
use DBI;
my $database = "ChanpreetFirst";
my $hostname = "localhost";
my $user = "root";
my $pass = "1111";
my $dsn = "DBI:mysql:database=$database";
my $query = "show tables";
my $dbh = DBI->connect("DBI:mysql:$database:$host", $user, $pass) or die $DBI::errstr;
#print "Hello\n";
my $q1 = "INSERT into authentication values ('5','Avtar','1234','Papa','5000')";
$sqlQuery = $dbh->prepare($query)
#$newQuery = $dbh->prepare($q1)
or die "Can't prepare $query: $dbh->errstr\n";
$rv = $sqlQuery->execute;
$rows = $dbh->do($q1);
print "$rows is/are inserted as per the mysql insert query.\n"
or die "Can't exeute the query: $sqlQuery->errstr\n";
print "<h3>*******My PERL DBI TEST******</h3>\n";
print "<p>Here is the complete result</p>\n";
while (@row = $sqlQuery->fetchrow_array()) {
	my $tables = $row[0];
	print "$tables\n";
}
$rc = $sqlQuery->finish;
exit(0);