#!/bin/bash
echo This script will install the necessary packages required for the UDOO. This script must be run as sudo.
while true;do
	echo -n "Would you like to Continue? "
    read -p  "Y or N: "  promptAnswer

    if [ "$promptAnswer" = "Y" ]
    then
	    break

    elif [ "$promptAnswer" = "N" ]
    then
	    echo "Exiting..."
	    exit

    else
	    continue

    fi
done

chmod u+x packages.sh && yes sh | ./packages.sh
