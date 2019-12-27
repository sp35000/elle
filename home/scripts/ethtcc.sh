#!/bin/sh
PVTNETWORK=/home/yzmu/ethereum-tcc
cd $PVTNETWORK
geth init $PVTNETWORK/genesis.json --datadir mychaindata
