#!/bin/bash
#! /usr/bin/bash 
while true ; do
echo "Menu : " 
echo " 1) create DB "
echo " 2) list DB "
echo " 3) Drop DB"
echo " 4) connect DB"


read -p "Enter your choice " cmd
 
   case $cmd in 
   
       1)
           . ./createDB.sh ;;
            
        2)
            ./listDB.sh;;
       3)
            ./dropDB.sh;;

       
           
     
            
     esac
done 
      
    ;;
esac