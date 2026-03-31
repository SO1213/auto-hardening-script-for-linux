#!/usr/bin/env bash
echo "audits will be written to ~/Downloads/Audit/"
#Lynis
sudo DEBIAN_FRONTEND=noninteractive apt install -y -qq lynis
#downloads ansi2html
sudo DEBIAN_FRONTEND=noninteractive apt install -y -qq kbtin
#runs a lynsis audit, logs and reports in the Audit folder, and the pipes it to ansi2html to generate an html report at Audit/lynis.html
sudo lynis audit system --logfile ~/Downloads/Audit/lynis.log --report-file ~/Downloads/Audit/lynis.dat | ansi2html -la > ~/Downloads/Audit/lynis.html
