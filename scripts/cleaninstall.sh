#!/bin/bash

rm -rf app/vendor
if [ $? -eq 0 ]; then
    echo -e $'\e[32mRemoved Bower Components'
else
    echo FAIL
fi
bower cache clean

rm -rf node_modules
npm cache clean

npm install
bower install
