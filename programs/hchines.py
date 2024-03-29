#!/usr/bin/python3
# -------------------------------------------------------------
# Sistema   : Trance
# Programa  : hchines.py
# Funcao    : Horoscopo chines
# Site      : https://git.serpro/12805865839/ckutils
# Autor     : Celso Kikuchi <celso.kikuchi@serpro.gov.br>
# -------------------------------------------------------------
# 20191126: versao inicial
# 20230424: adaptacao para python 3
# -------------------------------------------------------------
# definicao de variaveis
# -------------------------------------------------------------
# programa
# Recebe o ano
import sys
try:
 ano = int(sys.argv[1])
except ValueError:
 print ("Forneca um argumento numerico")
 sys.exit()
# Critica ano maior que 1900
if (ano<1900):
 print ("Ano deve ser maior ou igual a 1900")
else:
# Diminui ate chegar ao periodo 1900-1911
 while(ano>=1912):
  ano -= 12
 else:
# Fornece o signo
  signo={1900 : "rato", 1901 : "boi", 1902 : "tigre", 1903 : "coelho", 1904 : "dragao", 1905 : "cobra", 1906 : "cavalo", 1907 : "cabra", 1908 : "macaco", 1909 : "galo", 1910 : "cachorro", 1911 : "porco" }
  print (signo[ano])
