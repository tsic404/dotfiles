#!/bin/sh

CURRENT_DIR=$(dirname $(readlink -f "$0"))
cd $CURRENT_DIR

SYSTEM=`uname  -s`
if [ $SYSTEM = "Linux" ]; then
   bash init/linux
elif [ $SYSTEM = "Darwin" ]; then
   bash init/Mac
else
    echo  "What?"
fi

