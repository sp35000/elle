#!/bin/sh
# 191124: Elle: script to verify folders size and biggest files
echo "=== ETAPA 05 - Finn-Workflow ==="
FOLDER="/home/yzmu/case04/photo"
cd $FOLDER
/home/yzmu/bin/Gdiskspace.sh
echo "=== ETAPA 06 ==="
FOLDER="/home/yzmu/case04"
cd $FOLDER
/home/yzmu/bin/Gdiskspace.sh
echo "=== ETAPA 07 ==="
FOLDER="/home/yzmu/case04/mirror"
cd $FOLDER
/home/yzmu/bin/Gdiskspace.sh
