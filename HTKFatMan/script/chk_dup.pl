#!/usr/bin/perl -w

$argc = @ARGV;
$dict = $ARGV[0];
open(DICT,"$dict") || die "Can't open file: $!";
$line2 = "";
while($line = <DICT>) {
chomp($line);
if ($line ne $line2)
	{
		print "$line\n";
	}
$line2 = $line;
}