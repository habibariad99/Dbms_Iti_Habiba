#! /usr/bin/bash 

echo "welcome to our database engine ! "

echo "which operation do you want to select ?"



select choice in createDB listDB connectDB dropDB

do 
 case $choice in 
     
     "createDB" ) . ./createDB.sh ;;


     "listDB") . ./listDB.sh ;;
     

     "connectDB" ) . ./connectDB.sh ;;
     

     "dropDB") . ./dropDB.sh ;;



     esac

done