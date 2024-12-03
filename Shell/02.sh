#1/bin/bash 

printf "This is the second  level of the bash scripting "

 make_file () {
  if [[-z "$1" ]]; then 
   printf"Usage:make_file  <filename>\n" >&2 
   return 1 
fi 
  local filename; filename="$1"
  touch "$filename"  && printf "File '%s' created successfully. \n" "$filename"

}
make_file kaushik.txt 


