
#!/bin/sh
cd /app
./iventoy.sh -R start 
sleep 5
tail -f log/log.txt