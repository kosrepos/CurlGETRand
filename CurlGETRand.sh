#!/bin/bash

clear

echo -e "\tSend request to a URL of type :"
echo -e "\thttp://IP:PORT/SUBDIRECTORY?VALUENAME="
echo -e "\t--------------------------------------"
echo

read -p "Enter IP : " my_ip
read -p "Enter PORT : " my_port
read -p "Enter SUBDIRECTORY (add / for many) : " my_sub
read -p "Enter VALUENAME : " my_value
echo

my_url="http://""$my_ip"":""$my_port""/""$my_sub""?""$my_value""="

echo "Target URL : "$my_url

while :
do
    my_rand=$(( $RANDOM % 501 + 100 ))
    # random integer in [100,500]
    echo
    echo "Request to : "$my_url$my_rand
    echo -n "Server response : "
    curl $my_url$my_rand
    # request to URL and receive server response
    echo
    sleep 5
    # 2 seconds delay
done

#============================================================

: '


echo "Enter IP"
read my_ip
echo "Enter port"
read my_port
echo "Enter sub with /"
read my_sub
echo "Enter values with ;"
read my_values

my_url="http://""$my_ip"":""$my_port""$my_sub""?""$my_values"

echo $my_url

curl $my_url


'
#============================================================

: '
echo "Enter something"
read sth
echo $sth

read -p "Enter something else : " in_line
echo $in_line

'