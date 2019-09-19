#!/bin/bash
echo This script will install the necessary packages required for the UDOO. This script must be run as sudo.
while true;do
    echo -n "Would you like to Continue? "
    read -p  "Y or N: "  promptAnswer

    if [ "$promptAnswer" = "Y" ]
    then
        echo "Setting permissions for main_packages.sh"
        chmod u+x main_packages.sh
        echo "Beginning install"
        yes sh | ./main_packages.sh
        echo "Finished initial package installs"
        break

    elif [ "$promptAnswer" = "N" ]
    then
        echo "Exiting..."
        break

    else
        continue

    fi
done

echo -n "Would you like to install Airspy packages?"
while true;do
    read -p "Y or N: " buildAirspy

    if [ "$buildAirspy" = "Y" ]
    then
        chmod u+x airspy_packages.sh
        yes sh | ./airspy_packages.sh
        break

    elif [ "$buildAirspy" = "N" ]
    then
        echo "Airspy will not be built..."
        break

    else
        continue

    fi
done

