@echo off

mkdir .\am\tiehmm_0
 
echo "#Making tied state triphones"

HHEd -T 1 -H .\am\trihmm_5\newMacros -M .\am\tiehmm_0 .\config\tie.hed .\config\triphn.list
