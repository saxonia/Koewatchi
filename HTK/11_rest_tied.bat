@echo off

echo "#Reestimation"

mkdir .\am\tiehmm_1
mkdir .\am\tiehmm_2
mkdir .\am\tiehmm_3
mkdir .\am\tiehmm_4
mkdir .\am\tiehmm_5

HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\triphn.mlf -S train.scp -H .\am\tiehmm_0\newMacros -M .\am\tiehmm_1 .\config\tie.list
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\triphn.mlf -S train.scp -H .\am\tiehmm_1\newMacros -M .\am\tiehmm_2 .\config\tie.list
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\triphn.mlf -S train.scp -H .\am\tiehmm_2\newMacros -M .\am\tiehmm_3 .\config\tie.list
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\triphn.mlf -S train.scp -H .\am\tiehmm_3\newMacros -M .\am\tiehmm_4 .\config\tie.list
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\triphn.mlf -S train.scp -H .\am\tiehmm_4\newMacros -M .\am\tiehmm_5 .\config\tie.list
