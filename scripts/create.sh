#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

cd $APPLICATION
if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/application/${LANG}/createCounter.js counter1 up 0"
  node ${ROOT}/application/${LANG}/createCounter.js counter1 up 0
  echo "node ${ROOT}/application/${LANG}/createCounter.js counter2 down 10"
  node ${ROOT}/application/${LANG}/createCounter.js counter2 down 10
elif [ "$LANG" = "java" ]; then
  echo "java -jar ${ROOT}/application/${LANG}/CreateCounter.jar counter1 up 0"
  java -jar ${ROOT}/application/${LANG}/CreateCounter.jar counter1 up 0
  echo "java -jar ${ROOT}/application/${LANG}/CreateCounter.jar counter2 down 10"
  java -jar ${ROOT}/application/${LANG}/CreateCounter.jar counter2 down 10
fi
