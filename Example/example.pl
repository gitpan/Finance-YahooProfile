#!c:\perl\bin\perl

use Finance::YahooProfile;

die "Usage: $0 symbol [symbol ...]" if $#ARGV == -1;

my $qd = new Finance::YahooProfile;

my @sym = @ARGV;
my @res = $qd->profile( s => [@sym]);

for my $s (@res) {
    print "Symbol: $s->{'symbol'}\n";
    for (sort keys %$s) {
	print "\t '$_' => '$s->{$_}'\n";
    }
}
