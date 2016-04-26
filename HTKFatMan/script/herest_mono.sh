#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"
SourceDir="hmm_0"
TargetDir="hmm_"

#Files
TrainCfg="train.config"
TrainScp="train.scp"
MonophnLst="monophn.list"
MonophnMlf="monophn.mlf"

    #Reestimation
    for i in 1 2 3
    do
	if [ ! -d $ModelDir/$TargetDir$i ]
	then
	    mkdir $ModelDir/$TargetDir$i
	fi
	if [ "$i" = "1" ]
	then
	    echo "   loop 1 ...."
	    HERest -T 1 -A -C $ConfigDir/$TrainCfg \
		    -I $ConfigDir/$MonophnMlf \
		    -S $TrainScp -d $ModelDir/$SourceDir \
		    -M $ModelDir/hmm_1 $ConfigDir/$MonophnLst
        else
	    let "j=i-1"
	    echo "   loop $i ...."
	    HERest -T 1 -A -C $ConfigDir/$TrainCfg \
		    -I $ConfigDir/$MonophnMlf \
		    -S $TrainScp -H $ModelDir/hmm_$j/newMacros \
		    -M $ModelDir/$TargetDir$i $ConfigDir/$MonophnLst
	fi
    done