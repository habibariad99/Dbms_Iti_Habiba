#! /usr/bin/bash 

echo "hello here we are one step closer to create your DB "

read -p "what is your database name :" dbname 



if [[ $dbname =~ ^[a-zA-Z0-9]+$ ]]
then

  if [[ -d  $dbname ]] ;then 
   
     echo "It seems that this file already exists ! "
  else

     
     mkdir $dbname 
     echo "your database is created successfully"

  fi 

else
    echo " using special characters is not allowed " 

fi
      


