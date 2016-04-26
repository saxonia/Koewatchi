#!/bin/bash

#Direcotries
ConfigDir="./config"
ModelDir="./am"
SourceDir="trihmm_3"
TargetDir="tiehmm_0"

#Files
TieHed="tie.hed"
TriphnLst="triphn.list"

    if [ ! -d $ModelDir/$TargetDir ]
    then
	mkdir $ModelDir/$TargetDir
    fi

    #Making tied state triphones
    HHEd -T 1 -H $ModelDir/$SourceDir/newMacros \
		-M $ModelDir/$TargetDir \
		$ConfigDir/$TieHed $ConfigDir/$TriphnLst

