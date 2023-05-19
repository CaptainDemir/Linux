 ##  chmod +x generate_password.sh 

The script uses /dev/urandom as a source of random data and filters out non-alphanumeric characters using tr -dc 'A-Za-z0-9'. The head -c $length command limits the output to the desired password length. The generated password is stored in the variable $password and printed to the console.