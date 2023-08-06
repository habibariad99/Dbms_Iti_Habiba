#! /usr/bin/bash 


PS3= "Please select the database operation: "

select choice in createDB listDB dropDB connectDB
do 
   case $choice in 
     