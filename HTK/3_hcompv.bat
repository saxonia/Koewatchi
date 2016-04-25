@echo off

echo "Flat starting"
mkdir .\am
mkdir .\am\hmm_0
    
HCompV -T 1 -C config/train.config -f 0.01 -m -S train.scp -M am/hmm_0 config/proto5s