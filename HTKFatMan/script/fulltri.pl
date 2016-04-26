#!/usr/bin/perl -w

$argc = @ARGV;
if($argc != 1) {
    print "\nUsage:fulltri.pl [dict]\n";
}else {
    $dict = $ARGV[0];

    $nci = 0;
    $nv = 0;
    $ncf = 0;
    open(DICT,"$dict") || die "Can't open file: $!";
    while($line = <DICT>) {
	chomp($line);
	$i = index($line," ",0);
	$j = index($line," ",$i+1);
	$pron = substr($line,$j+1,1000);
	chop($pron);
	@token = split(/ /,$pron);
	if(@token > 1) {
	$f = 0;
	$n = 0;
	while($f == 0 && $n < $nci) {
	    if($token[0] eq $ci[$n]) {
		$f = 1;
	    } else {
	        $n++;
	    }
	}
	if($f == 0) {
	    $ci[$nci] = $token[0];
	    $nci++;
	}
	$f = 0;
	$n = 0;
	while($f == 0 && $n < $nv) {
	    if($token[1] eq $v[$n]) {
		$f = 1;
	    } else {
	        $n++;
	    }
	}
	if($f == 0) {
	    $v[$nv] = $token[1];
	    $nv++;
	}
	if(@token > 2) {
	    $f = 0;
	    $n = 0;
	    while($f == 0 && $n < $ncf) {
		if($token[2] eq $cf[$n]) {
		    $f = 1;
		} else {
		    $n++;
		}
	    }
	    if($f == 0) {
		$cf[$ncf] = $token[2];
		$ncf++;
	    }
	}
        }
    }
    close(DICT);
    
    for($i=0; $i<$nci; $i++) {
	for($j=0; $j<$nv; $j++) {
	    print "$ci[$i]\+$v[$j]\n";
        }
    }
    for($i=0; $i<$nci; $i++) {
	for($j=0; $j<$nv; $j++) {
	    for($k=0; $k<$ncf; $k++) {
		print "$ci[$i]\-$v[$j]\+$cf[$k]\n";
	    }
        }
    }
    for($j=0; $j<$nv; $j++) {
	for($k=0; $k<$ncf; $k++) {
	    print "$v[$j]\-$cf[$k]\n";
        }
    } 
    for($i=0; $i<$nci; $i++) {
	for($j=0; $j<$nv; $j++) {
	    print "$ci[$i]\-$v[$j]\n";
        }
    }
    for($j=0; $j<$nv; $j++) {
	for($k=0; $k<$ncf; $k++) {
	    for($i=0; $i<$nci; $i++) {
		print "$v[$j]\-$cf[$k]\+$ci[$i]\n";
	    }
        }
    }
    for($k=0; $k<$ncf; $k++) {
	for($i=0; $i<$nci; $i++) {
	    for($j=0; $j<$nv; $j++) {
		print "$cf[$k]\-$ci[$i]\+$v[$j]\n";
	    }
        }
    }
    for($i=0; $i<$nci; $i++) {
	for($j=0; $j<$nv; $j++) {
	    for($k=0; $k<$nci; $k++) {
		print "$ci[$i]\-$v[$j]\+$ci[$k]\n";
	    }
        }
    }
    for($j=0; $j<$nv; $j++) {
	for($i=0; $i<$nci; $i++) {
	    for($k=0; $k<$nv; $k++) {
		print "$v[$j]\-$ci[$i]\+$v[$k]\n";
	    }
        }
    }
}
