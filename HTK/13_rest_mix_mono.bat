@echo off

mkdir .\am\tiehmm2m_1
mkdir .\am\tiehmm2m_2
mkdir .\am\tiehmm2m_3
mkdir .\am\tiehmm2m_4
mkdir .\am\tiehmm2m_5


echo "#Reestimation"

HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\monophn.mlf -S train.scp -H .\am\tiehmm2m_0\newMacros -M .\am\tiehmm2m_1 .\config\monophn.list 
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\monophn.mlf -S train.scp -H .\am\tiehmm2m_1\newMacros -M .\am\tiehmm2m_2 .\config\monophn.list 
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\monophn.mlf -S train.scp -H .\am\tiehmm2m_2\newMacros -M .\am\tiehmm2m_3 .\config\monophn.list 
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\monophn.mlf -S train.scp -H .\am\tiehmm2m_3\newMacros -M .\am\tiehmm2m_4 .\config\monophn.list 
HERest -T 1 -A -D -C .\config\train.config -v 1.0e-8 -m 1 -I .\config\monophn.mlf -S train.scp -H .\am\tiehmm2m_4\newMacros -M .\am\tiehmm2m_5 .\config\monophn.list 
