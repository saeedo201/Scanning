#!/bin/bash
#colors
g='\033[1;32m'
p='\033[1;35m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
y='\033[1;33m'
echo -e "$cyan "
figlet  -f big "           S C A N"
echo ""
echo -e $green 
#---------------------------------------------
#---------------------------------------------
#---------------------------------------------
echo ""
echo -e $cyan "Welcome To In Scaning"
echo ""
echo -e $green"                       [1] Scan"
echo -e $green"                       [2] Skip filtering"
echo -e $green
echo ""
read -p " number ======> " Zoal
echo ""
if [ $Zoal -eq 1 ]
then
echo -e $yellow "Please Insert Domain :>"
echo ""
read -p "                       Domain----->" Domain
nmap -p- $Domain
fi
if [ $Zoal -eq 2 ]
then
echo ""
echo -e $yellow "Please Insert Ip :>"
echo ""
read -p "                       Ip----->" Ip
echo -e $yellow "Pleas Insert Port :>"
read -p "                      Port----->" Port
nmap -sM -vv -p $Port $Ip
fi
