@echo off

perl fulltri.pl config\dgs.dict > temp

copy /a temp + .\config\triphn.list temp

echo sil>>temp

sort /M 1024 /REC 10000 temp > temp2

perl redup.pl temp2 > .\config\triphn-full.list

del temp

del temp2
