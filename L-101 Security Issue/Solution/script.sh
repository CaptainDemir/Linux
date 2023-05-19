if [[ ! -f $1 ]]
then 
      echo "please type a file"
      exit
fi
cat $1 | grep serdar | grep Terminate | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq > result.txt 
echo "Your result is ready under result.txt file"