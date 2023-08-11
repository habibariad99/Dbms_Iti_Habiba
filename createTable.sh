#! /usr/bin/bash 

read -p "please enter your table name " tablename  


#check on regex (special character) w  eno md5lsh haga fadya 
if [[ $tablename =~ ^[a-zA-Z0-9]+$ ]]
  then
#check that this name doesn't exist
  if [[ -f $tablename ]] 
  then
  echo "this table already exists "
  cd ..
  ../../connectDB
  else 
# i will create table files  
  touch ./$tablename
  touch ./$tablename-metadata
  echo "table files are created successfully " 
  fi

#ba5od esm column 
#datatype bta3 
#primary key  
i=0 

 read -p " please enter number of columns you want to add to your table :" noofColumns 

while [[ $i -le $noofColumns ]];do  

 read -p "please enter column name " columnName 

 if [[ $columnName =~ ^[a-zA-Z0-9]+$ ]] 
  then 
     echo $columnName":" >> ${tablename}-metadata
    echo  "please mention column data type"
     select columndatatype in "string" "integer"
     do 
     case $columndatatype  in 
        
        "string" ) 
          echo $columndatatype":" >> ${tablename}-metadata 
           break;;
        
        "Integer" ) 
          echo $columndatatype":" >> ${tablename}-metadata 
          break;;
        
         *)
          echo "Please Choose number from the list"
          ;;

      esac
       done
       echo  "please mention do you want the column to be primary key or not "
     select pkey in "Yes" "No"
     do 
     case $pkey  in 
        
        "Yes" ) 
          echo $pkey"pkey:yes" >> ${tablename}-metadata
          break ;;
        
        "No" ) 
          echo $pkey":no" >> ${tablename}-metadata 
          break
          ;;
        
         *)
          echo "Please Choose number from the list"
          ;;
      
      esac

      
      done
      
    
      
   else
      echo " column name can not include special characters "
 fi
done 

else
echo "using special character in table name is not allowed !"
fi
