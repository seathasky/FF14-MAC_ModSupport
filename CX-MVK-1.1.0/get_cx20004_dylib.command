#!/bin/bash

cp -n "/Applications/XIV on Mac.app/Contents/Resources/wine/lib/libMoltenVK.dylib" "/Applications/XIV on Mac.app/Contents/Resources/wine/lib/libMoltenVK.dylib.bak"
curl -LO https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-20.0.4.zip
unzip -qquo crossover-20.0.4.zip
cp "CrossOver.app/Contents/SharedSupport/CrossOver/lib64/libMoltenVK.dylib" "/Applications/XIV on Mac.app/Contents/Resources/wine/lib/libMoltenVK.dylib"
rm -r CrossOver.app
rm crossover-20.0.4.zip