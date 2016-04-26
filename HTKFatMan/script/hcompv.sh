#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"

#Files
TrainCfg="train.config"
TrainScp="train.scp"
Proto5s="proto5s"
    
    #Flat starting
    if [ ! -d $ModelDir ]
    then
	mkdir $ModelDir
    fi
    if [ ! -d $ModelDir/hmm_0 ]
    then
	mkdir $ModelDir/hmm_0
    fi
    HCompV -T 1 -C $ConfigDir/$TrainCfg \
	    -f 0.01 -m -S $TrainScp \
	    -M $ModelDir/hmm_0 $ConfigDir/$Proto5s


