#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"
SourceDir="tiehmm_3"
TargetDir="tiehmm2m_"

#Files
TrainCfg="train.config"
TrainScp="train.scp"
TieLst="tie.list"
TriphnMlf="triphn.mlf"
MixHed="mix1to2.hed"

#Flags
Flags="-v 1.0e-8 -m 1"

    #Split mixtures
    let "i=0"
    if [ ! -d $ModelDir/$TargetDir$i ]
    then
	mkdir $ModelDir/$TargetDir$i
    fi
    HHEd -T 1 -A -D \
	  -H $ModelDir/$SourceDir/newMacros \
	  -M $ModelDir/$TargetDir$i \
	  $ConfigDir/$MixHed \
	  $ConfigDir/$TieLst

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
