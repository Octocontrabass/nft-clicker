#!/bin/bash
curl --retry-all-errors --retry 255 --create-dirs "https://ipfs.io/ipfs/QmeSjSinHpPnmXmspMjwiXyN6zS4E9zccariGR3jxcaWtq/[0-9999]" -o "bayc/#1.json"

for i in {0..9999}
do
    curl --retry-all-errors --retry 255 --create-dirs `jq -r .image bayc/$i.json | sed 's,ipfs://,https://ipfs.io/ipfs/,g'` -o "bayc/$i.png"
done
