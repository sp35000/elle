#!/bin/sh
# dump MySQL database - Celso K. em 11/12/19.
# initialize variables
PASSWORD2="3166snaq(*"
# start
mysqldump -u wp -p"$PASSWORD2" serina news > /media/sf_12805865839/ownCloud/pc18/serina_news.sql
exit 0
