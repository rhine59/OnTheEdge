#!/bin/sh
# Generate an ICP API Key for use by Horizon Edge agent authentication
cloudctl login -a  https://fs20edgem.169.62.229.212.nip.io:8443 -u admin -p grey-hound-red-cardinal --skip-ssl-validation -n default
#cloudctl iam api-key-delete <your_name_goes_here>
#cloudctl iam api-key-create edge -d "<your_name_goes_here" -f edge-api-key
#cloudctl iam api-key-delete richard_hine -f
cloudctl iam api-key-create richard_hine -d "FastStart 2020 Edge API Key" -f edge-api-key
cloudctl iam api-keys
