#/bin/bash 
printf "This is the day one of the "

show_date(){
 printf "Current date is : %s\n" "$(date)"
}

shoe_file(){
  printf "The number of the file in the \n "
   ls -l 


}

show_date 
shoe_file
