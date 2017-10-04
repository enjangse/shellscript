#!/bin/sh

#lenghtArray=5
#for ((i=1; i<5; i++))
for i in 1 2 3 4 5 6 
do
##sed -re "/\[Story-1\]/,/\[Story-2\/] w hasil$i.txt" sample.log
  sed -re "/\[Story-$i\]/,/\[Story-$i+1\]/ w hasil$i.txt" sample.log
  #r=1
  #s=1
   for x in 1 2 3 4 5 6
   do
     sed -re "/\Story#$x\]/,/\[Story#$x+1\]/ w hasil.html" hasil$r.txt
     #r=($r+1)
     #s=($s+1)
   done
done
