@echo off

echo "Make mktri.hed"

perl config/maketrihed.pl config/monophn.list config/triphn.list

move mktri.hed config/mktri.hed

mkdir .\am\trihmm_0

HHEd -T 1 -A -D -H .\am\hmm_5\newMacros -M .\am\trihmm_0 .\config\mktri.hed config\monophn.list
