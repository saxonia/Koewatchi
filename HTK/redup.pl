#!/usr/bin/perl -w

$argc = @ARGV;
if($argc != 1) {
    print "\nUsage:strconcat.pl [temp file]\n";
}else {
    $tril = $ARGV[0];
	$lineo = "";
    open(TRIL,"$tril") || die "Can't open file: $!";
    while($line = <TRIL>) {
	if ($lineo ne $line) {
	print "$line";
	}
	$lineo = $line;
	}

}
