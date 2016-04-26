#!/bin/bash

#Direcotries
ScriptDir="./script"
ConfigDir="./config"

#Files
Fulltripl="fulltri.pl"
Dict="dgs.dict"
TriLst="triphn.list"
FullLst="triphn-full.list"

    perl $ScriptDir/$Fulltripl \
	    $ConfigDir/$Dict > temp
    cat $ConfigDir/$TriLst >> temp
    echo "sil" >> temp
    sort -u temp > $ConfigDir/$FullLst
    rm -rf temp



====================================

perl script/fulltri.pl config/dgs.dict > temp
type config/triphn.list >> temp
echo sil >> temp

