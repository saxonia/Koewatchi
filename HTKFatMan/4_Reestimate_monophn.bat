HERest -T 1 -A -C config/train.config -I config/monophn.mlf -S train.scp -d am/hmm_0 -M am/hmm_1 config/monophn.list
HERest -T 1 -A -C config/train.config -I config/monophn.mlf -S train.scp -H am/hmm_1/newMacros -M am/hmm_2 config/monophn.list
HERest -T 1 -A -C config/train.config -I config/monophn.mlf -S train.scp -H am/hmm_2/newMacros -M am/hmm_3 config/monophn.list
HERest -T 1 -A -C config/train.config -I config/monophn.mlf -S train.scp -H am/hmm_3/newMacros -M am/hmm_4 config/monophn.list
HERest -T 1 -A -C config/train.config -I config/monophn.mlf -S train.scp -H am/hmm_4/newMacros -M am/hmm_5 config/monophn.list
