#!/bin/bash

SCHEME=$1
BASEFN=$2

KFOLD=5
NUMSAMP=2000
NUMOUTER=100
NUMINNER=100000
RANDSEED=194582

JARPATH=$HOME/code/LogicLDA/target/logiclda-0.0.1-SNAPSHOT-jar-with-dependencies.jar
BASEDIR=$HOME/projects/logic-grid

java -Xmx10g -jar $JARPATH $BASEDIR/$BASEFN/$BASEFN $SCHEME $NUMSAMP $NUMOUTER $NUMINNER $RANDSEED $KFOLD
