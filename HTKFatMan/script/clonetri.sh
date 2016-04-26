#!/bin/bash

#Direcotries
ScriptDir="./script"
ConfigDir="./config"
ModelDir="./am"
TargetDir="trihmm_0"
SourceDir="hmm_3"

#Files
Maketrihed="maketrihed.pl"
MktriHed="mktri.hed"
MonophnLst="monophn.list"
TriphnLst="triphn.list"

    #Make mktri.hed
    perl $ScriptDir/$Maketrihed \
	    $ConfigDir/$MonophnLst $ConfigDir/$TriphnLst
    mv -f mktri.hed $ConfigDir/$MktriHed

    #Cloning triphones
    if [ ! -d $ModelDir/$TargetDir ]
    then
	mkdir $ModelDir/$TargetDir
    fi
    HHEd -T 1 -A -D -H $ModelDir/$SourceDir/newMacros \
		-M $ModelDir/$TargetDir \
		$ConfigDir/$MktriHed $ConfigDir/$MonophnLst
