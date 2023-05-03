#!/bin/bash
echo -e "\n"
echo "========================================================================================================"
echo "Running script!!!"
echo "========================================================================================================"

#Add export command with variable name and value to .bash_profile
echo 'export MYUSER="avil07lobo"' >> ~/.bash_profile
echo -e "\n"

echo "========================================================================================================"
echo "Display the contents of .bash_profile with environment variable added!!!"
echo "========================================================================================================"
cat ~/.bash_profile
echo -e "\n"

#Apply changes to current session
source ~/.bash_profile

echo "========================================================================================================"
echo "Display my environment variable!!"
echo "========================================================================================================"
echo $MYUSER
echo -e "\n"
