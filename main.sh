#! /usr/bin/bash 

echo "welcome to our database engine ! "

echo "which operation do you want to select ?"

if [ -d databases ];
then

cd  databases

else 
   mkdir databases
   cd databases 

fi



select choice in createDB listDB connectDB dropDB

do 
 case $choice in 
     
     "createDB" ) . ../createDB.sh ;;


     "listDB") . ../listDB.sh ;;
     

     "connectDB" ) . ../connectDB.sh ;;
     

     "dropDB") . ../dropDB.sh ;;



     esac

done
