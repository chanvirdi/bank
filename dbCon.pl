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

$sqlQuery = $dbh->prepare($query)
or die "Can't prepare $query: $dbh->errstr\n";
$rv = $sqlQuery->execute
or die "Can't exeute the query: $sqlQuery->errstr\n";
print "<h3>*******My PERL DBI TEST******</h3>";
print "<p>Here is the complete result</p>";
while (@row = $sqlQuery->fetch_array()) {
	my $tables = $row[0];
	print "$tables\n<br>";
}
$rc = $sqlQuery->finish;
exit(0);