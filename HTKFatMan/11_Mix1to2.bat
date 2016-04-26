HHEd -T 1 -A -D -H am/tiehmm_1/newMacros -M am/tiehmm2m_0 config/mix_add_1.hed config/tie.list

HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1 -I config/triphn.mlf -S train.scp -H am/tiehmm2m_0/newMacros -s am/tiehmm2m_1/stats -M am/tiehmm2m_1 config/tie.list > log1.txt
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1 -I config/triphn.mlf -S train.scp -H am/tiehmm2m_1/newMacros -s am/tiehmm2m_1/stats -M am/tiehmm2m_1 config/tie.list > log2.txt
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1 -I config/triphn.mlf -S train.scp -H am/tiehmm2m_1/newMacros -s am/tiehmm2m_1/stats -M am/tiehmm2m_1 config/tie.list > log3.txt
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1 -I config/triphn.mlf -S train.scp -H am/tiehmm2m_1/newMacros -s am/tiehmm2m_1/stats -M am/tiehmm2m_1 config/tie.list > log4.txt
HERest -T 1 -A -D -C config/train.config -v 1.0e-8 -m 1 -I config/triphn.mlf -S train.scp -H am/tiehmm2m_1/newMacros -s am/tiehmm2m_1/stats -M am/tiehmm2m_1 config/tie.list > log5.txt
