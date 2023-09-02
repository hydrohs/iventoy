
#!/bin/sh
cd /iventoy
[ ! -f data/iventoy.dat ] && cp dat/* data/
./iventoy.sh -R start 
sleep 5
tail -f log/log.txt
