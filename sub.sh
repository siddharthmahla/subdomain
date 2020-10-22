#!/bin/bash

url=$1

if [ ! -d "url/recon" ];then
	 mkdir $url

fi

if [ ! -d "url/recon" ];then
	 mkdir $url/recon


fi

echo "[+] Hsrvesting subdomains ith assetfinder...."
assetfinder $url >> $url/recon/asets.txt
cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
rm $url/recon/assets.txt