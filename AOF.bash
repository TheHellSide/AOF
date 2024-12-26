#!/bin/bash

#DIRECTORY
echo -e "[!] Insert the Year: ";
read Year;
if [ -d "AOF-$Year" ]
then
	echo "[-] Directory already exists...";
else
	mkdir "AOF-$Year";
	echo "[+] Directory succesfully created..."
fi;

#FILES AND PATH
cd "AOF-$Year";
echo -e "[!] Insert the Day: ";
read Day;

if [ -f "AOF-${Day}P1.py" -o -f  "AOF-${Day}P2.py" -o -f  "prova.txt" -o -f "AOF $Day.txt" ]
then
        echo "[-] Aborting, File already exist...";
	exit 0;
else
        touch "AOF-${Day}P1.py" && touch "AOF-${Day}P2.py" && touch "AOF-${Day}.txt" && touch "prova.txt";
        echo "[+] Path succesfully created..."
fi;

#EXITING
exit 1;
