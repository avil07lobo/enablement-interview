#!/bin/bash

#make it executable using the command chmod +x setup.sh.

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

# Replace <HOSTNAME> with the actual values for your environment
HOSTNAME="vault-server.hashicorp.com"

# Write the following configuration parameters to config.hcl
echo 'cluster_addr  = "https://'"$HOSTNAME"':8201"' >> config.hcl
echo 'api_addr  = "https://'"$HOSTNAME"':8200"' >> config.hcl
echo 'disable_mlock  = true' >> config.hcl

echo "========================================================================================================"
echo "Display the contents of config.hcl file!!!"
echo "========================================================================================================"
cat config.hcl
