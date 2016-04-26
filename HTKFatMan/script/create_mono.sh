#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"
TargetDir="hmm_0"

#Files
Proto5s="proto5s"
MonophnLst="monophn.list"

    #Create monophones
    let "i=0"
    for phn in `cat $ConfigDir/$MonophnLst`
    do
	if [ $phn != "" ]
	then
	    sed 's/'$Proto5s'/'$phn'/' $ModelDir/$TargetDir/$Proto5s \
		    > $ModelDir/$TargetDir/$phn
	    let "i=i+1"
	fi
    done
