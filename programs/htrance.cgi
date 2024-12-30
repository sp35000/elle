#!/bin/bash
# -------------------------------------------------------------
# App       : Trance
# Program   : htrance.cgi
# Function  : search Trance home and account files
# Site      : https://github.com/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# 20210127: adapted to nextcloud
# 20220808: adapted to ~/bin and intra
# 20240528: adapting to elle.conf
# 20241017: wrong path fixed, elle.conf not working
version="20241017: wrong path fixed, elle.conf not working"
# -------------------------------------------------------------
# initialize variables
msg_help="search Trance home and account files"
. /home/yzmu/etc/elle.conf
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
  *) exit 1;;
 esac
done
trance_dir="$intra/trance"
# -------------------------------------------------------------
# start
echo Content-type: text/html
echo ""

/bin/cat << EOM1
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Trance Search</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/sig/css/sig.css" />
</head>
<body>
<!-- body content here -->
<br /><br />
<div class="large-12 columns text-center">
<h1 align="center">Trance iHome Search</h1><hr/>
<p><a href="/sig/trance/index.html" class="btn btn-lg btn-success" >Trance</a></p>
<form method="post" action="/cgi-bin/htrance.cgi">
<p>Year:&nbsp;<input type="text" name="year" maxlength="4" size="4">&nbsp;
Month:&nbsp;<input type="text" name="month" maxlength="2" size="2">&nbsp;
Text:&nbsp;<input type="text" name="log" maxlength="30" size="30">
<br/><br/>
acc01:&nbsp;<input type="text" name="acc01" maxlength="30" size="20">&nbsp;
acc02:&nbsp;<input type="text" name="acc02" maxlength="30" size="20">&nbsp;
<input type="submit" value="OK"></p>
</form>
</div>
<pre style="color: rgb(0,255,0);background-color: rgb(0,0,0);border: 0px">
EOM1

read var
IFS='=&'
POST=($var)

for ((i=0; i<${#POST[@]}; i+=2))
do
 #echo "${POST[@]:$i:1} = ${POST[@]:$i+1:1}"
 year=${POST[1]}
 month=${POST[3]}
 textsearch=${POST[5]}
 acc01=${POST[7]}
 acc02=${POST[9]}
 acc03=${POST[11]}
done 

#echo $year $textsearch

if [ "${year}" != "" ]; then
 echo '<h2 align="center">Calend&aacute;rio de' $year $month '</h2>'
 cal $month $year
fi

if [ "${textsearch}" != "" ]; then 
 echo '<h2 align="center">Resultados da pesquisa</h2>'
 echo "Termo pesquisado: " $textsearch '<br/><br/>'
 cd "$trance_dir"
 grep -i "$textsearch" /home/pi/myCloud/mirror/dev/intra/trance/h*.html|sort -r
fi

if [ "${acc01}" != "" ]; then 
 echo '<h2 align="center">Resultados da pesquisa</h2>'
 echo "Termo pesquisado: " $acc01 '<br/><br/>'
 /home/yzmu/bin/acc01 "$acc01"
fi

if [ "${acc02}" != "" ]; then 
 echo '<h2 align="center">Resultados da pesquisa</h2>'
 echo "Termo pesquisado: " $acc02 '<br/><br/>'
 /home/yzmu/bin/acc02 "$acc02"
fi

/bin/cat << EOM2
</pre>
</body>
</html>
EOM2
