#! /usr/bin/bash

read -p "enter the data base you want to connect to " connectDB 

cd databases 

if [[ -d $connectDB ]] ; then 
   
    cd databases/$connectDB 
     
     echo "you are now connected to the database "

   

    echo "enter the operation you want to apply on the connected DB  " 

    select cmd in createTable  deleteTable dropTable  insertTable updateTable selectFromTable  deleteFromTable

     do 
     case $cmd in 
     
     "createTable")   . ../createTable.sh;; 


     "deleteTable") . ../deleteTable.sh ;;
     

     "dropTable" ) . ../dropTable.sh ;;
     

     "insertTable") . ../insertTable.sh ;;

     "updateTable") . ../updateTable.sh ;;

     "selectFromTable") . ../selectFromTable.sh ;; 

     "deleteFromTable") . ../deleteFromTable.sh ;;
     esac
     done
     else 
     echo " this database does not exist "

fi