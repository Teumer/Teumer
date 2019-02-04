#!/bin/bash

# create user accounts and their passwords
check_exit_code () {
	if [[ $1 -ne 0 ]]; then
		echo "$2"
		echo "Exit code: $1"
		exit $1
	fi
}

echo
echo -e "Please enter username for account: \c"
read username
if [ -z $username ]; then
	echo "You did not provide a username"
	exit 1
fi

declare -A exit_array=([exit]=1 [quit]=1 [bye]=1)
lower_username=$(echo $username | tr '[:upper:]' '[:lower:]')
if [[ -n "${exit_array[$lower_username]}" ]]; then
	echo "Exiting script."
	exit 1
fi

#case $username in
#	exit) echo "Exit"; exit;;
#	quit) echo "Exit"; exit;;
#esac

echo "Account for $username is being created..."
useradd $username
check_exit_code "$(echo $?)" "Failed to create account"
echo "done"

echo "Password for $username is being set..."
passwd $username
check_exit_code "$(echo $?)" "Failed to set password"
echo "done"

user_record=$(grep $username /etc/passwd)
echo "Here is $username's record:"
echo $user_record

echo "Account is ready for use."

echo "Deleting $username's account..."
userdel $username
check_exit_code "$(echo $?)" "Failed to delete account"
echo "done"
