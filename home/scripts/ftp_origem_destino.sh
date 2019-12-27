#!/bin/sh
# ftp automatizado - Celso K. em 21/11/19.
# definicao de variaveis
HOST="hoc21"
USER="pgto_opr"
PASSWORD="serpro123"
# inicio do programa
# inicia sessao ftp
ftp -nv $HOST << EOF
user $USER $PASSWORD
cd hoc21
ls
EOF
exit 0
