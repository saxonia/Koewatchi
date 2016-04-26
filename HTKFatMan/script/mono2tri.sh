#!/bin/bash

#Direcotries
ConfigDir="./config"

#Files
MonophnMlf="monophn.mlf"
TriphnLst="triphn.list"
TriphnMlf="triphn.mlf"
MktriLed="mktri.led"

    #Make triphone mlf file
    HLEd -T 1 -A -D -n $ConfigDir/$TriphnLst \
	        -l '*' -i $ConfigDir/$TriphnMlf \
		$ConfigDir/$MktriLed $ConfigDir/$MonophnMlf