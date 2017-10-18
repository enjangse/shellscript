#!/bin/bash
############################################
## Script to test code using gometalinter ##
## Create :: Enjang Setiawan              ##
##                                        ##
############################################ 
##set -e

WOWWOWO
GometalinterVariable=("aligncheck"
		      "deadcode" 
                      "dupl" 
                      "errcheck" 
                      "gas" 
                      "goconst" 
                      "gocyclo" 
                      "goimports" 
                      "golint" 
                      "gosimple" 
                      "gotype" 
                      "ineffassign" 
                      "interfacer" 
                      "lll" 
                      "megacheck" 
                      "misspell" 
                      "safesql" 
                      "staticcheck" 
                      "structcheck" 
                      "unconvert" 
                      "unparam" 
                      "unused" 
                      "varcheck")



lenghtArray=${#GometalinterVariable[@]}

##directory=${pwd}

for ((i=1; i<${lenghtArray}; i++));
do
   
   echo "Program yang sedang berjalan sekarang == ${GometalinterVariable[$i]}"	
   gometalinter  -j 1 --disable-all --enable=${GometalinterVariable[$i]} sample 2>&1 
   wait
 	
   
done
 
