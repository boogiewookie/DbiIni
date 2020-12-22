BEGIN {
	unshift @INC, ".";
}

use DbiIni;

my $dbh = DbiIni->connect('finance',{'AutoCommit' => 1}) or die $DBI::errstr;
print join "\n", @{$dbh->selectcol_arrayref("SELECT acctkey, acctname FROM accounts",{Columns=>[1,2]})}, "\n";
