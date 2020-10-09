#
# Prints a list of all the k8s integration tenants, along with the owning teams
#

# save working directory so we can move back to the right place once done
PWD=pwd

# These scripts work best when in the main directory for the neptune client
cd ~/code/neptune.api-rest-client && 

# Ensure we have a vaild AWS session, and output the results a dummy file
# so we don't yield control flow.
make login > /tmp/null && 

# Actually get the tenant info and print it out
./client.sh "https://neptune.rally-dev.co/v0/tenant?realm=k8s-integration" | cat && 

# Return to the starting directory
cd $PWD