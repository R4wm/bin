#!/usr/bin/env bash

url='https://mintz5.duckdns.org/mp3/music/other'


for i in $(curl -s -L "$url" | grep "\.mp3" | awk '{print $2}' | sed s/href\=// | tr -d "\""  | cut -f1 -d">")
do
    mplayer "$url/$i"
done

