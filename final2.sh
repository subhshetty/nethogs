nethogs -c 2 -d 15 -t > ex.txt
awk '/Refreshing:/,0 { if ($3 > 0 || $4 > 0) {if(/^sshd/) {print $2, $3, $4 > "name.txt"} else {print > "name.txt"}}}' ex.txt
sort -u "name.txt" | cat
rm -f name.txt ex.txt
