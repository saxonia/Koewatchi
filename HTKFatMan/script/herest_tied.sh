#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"
TargetDir="tiehmm_"

#Files
TrainCfg="train.config"
TrainScp="train.scp"
TieLst="tie.list"
TriphnMlf="triphn.mlf"
Stats="stats"

#Flags
Flags="-v 1.0e-8 -m 1"

    #Reestimation
    for i in 1 2 3
    do
	if [ ! -d $ModelDir/$TargetDir$i ]
	then
	    mkdir $ModelDir/$TargetDir$i
	fi
	echo "   loop $i ...."
	let "j=i-1"
	HERest -T 1 -A -D \
		-C $ConfigDir/$TrainCfg $Flags\
		-I $ConfigDir/$TriphnMlf \
		-S $TrainScp \
		-H $ModelDir/$TargetDir$j/newMacros \
		-M $ModelDir/$TargetDir$i \
		$ConfigDir/$TieLst
    done
