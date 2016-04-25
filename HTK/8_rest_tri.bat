@echo off

mkdir .\am\trihmm_1
mkdir .\am\trihmm_2
mkdir .\am\trihmm_3
mkdir .\am\trihmm_4
mkdir .\am\trihmm_5

HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1	-I config/triphn.mlf -s am/trihmm_1/stats -S train.scp -H am/trihmm_0/newMacros -M am/trihmm_1 config/triphn.list
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1	-I config/triphn.mlf -s am/trihmm_2/stats -S train.scp -H am/trihmm_1/newMacros -M am/trihmm_2 config/triphn.list
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1	-I config/triphn.mlf -s am/trihmm_3/stats -S train.scp -H am/trihmm_2/newMacros -M am/trihmm_3 config/triphn.list
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1	-I config/triphn.mlf -s am/trihmm_4/stats -S train.scp -H am/trihmm_3/newMacros -M am/trihmm_4 config/triphn.list
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1	-I config/triphn.mlf -s am/trihmm_5/stats -S train.scp -H am/trihmm_4/newMacros -M am/trihmm_5 config/triphn.list
