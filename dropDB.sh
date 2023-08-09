#! /usr/bin/bash 

 read -p " please enter the name of the database you want to delete " deletedDB

if [[ $deletedDB =~ ^[a-zA-Z0-9]+$ ]];
  then

  if [[ -a $deletedDB ]] ;then 
       rm -r $deletedDB

       echo "your database is deleted successfully "
  else 
     echo " can not found a database with that name " 

  fi 

else 
   
   echo " using special characters is not allowed " 
  
fi 