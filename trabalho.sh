#!/bin/bash

egrep -o '[01]*' bruxarias.dat > 1a.txt

egrep -o '1[01]{0,7}' bruxarias.dat > 1b.txt

egrep -o '^1[01]{0,7}$' bruxarias.dat > 1c.txt

egrep -o '\b(0|[1-9][0-9]*)\b' bruxarias.dat > 1d.txt

egrep -o '[ue]tt' bruxarias.dat > 1e.txt

egrep -o '[A-Za-z][a-z]{2,}' bruxarias.dat > 1f.txt

egrep -o '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.dat > 1g.txt

egrep -o '\b((25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9]{1,2})\b' bruxarias.dat > 1h.txt

find /etc -type d > 2a.txt

find /etc -maxdepth 1 -type d > 2b.txt

find /etc -type f -size +1k > 2c.txt

find /var -type f -mtime -7 > 2d.txt

awk -F: '{print $1}' /etc/passwd > 3a.txt

awk -F: 'NR>10&&NR<20 {print $1}' /etc/passwd > 3b.txt

sed "s/^$(whoami):/exercicio:/" /etc/passwd > 4a.txt

sed "/^$(whoami):/d" /etc/passwd > 4b.txt






