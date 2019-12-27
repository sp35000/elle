#!/bin/bash
#
# start-vbox.sh : Script para iniciar maquina virtual Debian
#
# Autor:        Maxlen Santos <maxlen.santos@serpro.gov.br>
# Manutencao:   Maxlen Santos <maxlen.santos@serpro.gov.br>
#
# Historico:
#
# v1.0 13-03-2015 , Maxlen :
#       - Versao inicial da aplicacao
#
# Licenca:      GPL
#
#
USER_VM=$(stat -c %U /home/vbox)
if   [ "$USER_VM"  != "$USER" ] || [ `vboxmanage showvminfo  Debian |grep State:|awk '{print $2}'` = running ] 
then
	zenity --warning --text "Jã existe outra instância do virtualbox em execução pelo usuario \""$USER_VM"\" ou as configurações máquina virtual Debian estão travadas para esse usuário.\n A máquina virtual \"Debian\" é configurada para o primeiro usuário logado!" 
else
	vboxmanage startvm Debian
fi
