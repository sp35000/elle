#!/bin/sh
# download de uma playlist do YT usando o youtube-dl
  
sudo apt-get -y install youtube-dl # instala
sudo youtube-dl -U # atualiza
sudo youtube-dl --version # talvez atualize novamente (uma única vez, caso especial)
  
time \
youtube-dl \
http://youtube.com/playlist?list=PLFCCF1CA488CE29A7 \
--restrict-filenames \
--console-title \
-c \
-o "%(autonumber)s--%(id)s--%(title)s.%(ext)s" \
-f 35
  
# baixa todos os videos da playlist
# no formato indicado (35 = flv 854x480)
# nomeando os arquivos sequencialmente,
# com o id original do YT,
# o titulo do vídeo, limitado a caracteres ASCII
# e a extensão adequada (flv, no caso)
# reiniciando o download do ponto em que parou em caso de interrupção
# mostra, no final, o tempo total de operação
# mantem o titulo da janela atualizado com o status do download, se possível
