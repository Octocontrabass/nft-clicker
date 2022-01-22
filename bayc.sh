#!/bin/sh
for i in `seq 0 9999`
do
    sem -j10 curl -s `curl -s https://ipfs.io/ipfs/QmeSjSinHpPnmXmspMjwiXyN6zS4E9zccariGR3jxcaWtq/$i | jq -r .image | sed 's,ipfs://,https://ipfs.io/ipfs/,g'` > bayc-$i.png
done
sem --wait
