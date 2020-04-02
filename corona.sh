#!/bin/sh

curl -s https://corona-stats.online/?emojis=true > corona

grep "India" corona |
	sed "s/\s*//g; s/║//g; s/🏳//g; s/🇳//g; s/│/;/g" |
	awk -F';' '{print "\n RANK: " $1 "\n COUNTRY: " $2 "\n TOTAL CASES: " $3 "\n NEW CASES:  "  $4 "\n TOTALDEATH: "  $5"💀 " "\n NEW DEATH: "  $6 "\n RECOVERED: "  $7"👨" "\n ACTIVE: "  $8"🤕 " "\n" "\n\n Created By:- Jash. \n Feel Free to edit this bash script and put your countries name @ line: 3" }'

rm corona
