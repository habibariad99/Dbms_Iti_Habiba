#! /usr/bin/bash 

read -p "please enter your table name " tablename 

#loop on flag  ( de lesa m3mlthash)
#check on regex (special character) w  eno md5lsh haga fadya 
if [[ $tablename =~ ^[a-zA-Z0-9]+$ ]]
  then
#check that this name doesn't exist
  if [[ -f $tablename ]] 
  then
  echo "this table already exists "
  cd ..
  ./connectDB
  else 
# i will create table files  
  touch ./$tablename
  touch ./metadata$tablename
  echo "table files are created successfully " 
  fi

#ba5od esm column 
#datatype bta3 
#primary key 

read -p "please enter how many columns do you need in your table" nocol 

for i in $nocol 
do 

read -p " column name : " colname 
echo -n colname > metadata$tablename

read -p " column data type :" coldatatype 
echo -n  coldatatype > metadata$tablename

read -p "do you want it to be your primary key (yes/no):" pk
echo pk > metadata$tablename
 

done 
else 
echo "using special character in table name is not allowed !"
fi


#read -p 
#echo -n 
    