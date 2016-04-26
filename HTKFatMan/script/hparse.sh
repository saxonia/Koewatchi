#!/bin/bash

#Direcotries
ConfigDir="./config"
LmDir="./lm"

#Files
Gram="dgs.gram"
Wdnet="dgs.wdnet"

    #Coding
    HParse $ConfigDir/$Gram $LmDir/$Wdnet

