#!/bin/bash
LDAPID=`cloudctl iam ldaps |grep openldap |awk '{print$1}'`
for i in {01..50}
do
cloudctl iam user-import -c $LDAPID -f -u user$i
cloudctl iam team-create team$i
cloudctl iam team-add-users team$i Administrator -u user$i
kubectl create ns user$i
cloudctl iam resource-add team$i -r crn:v1:icp:private:k8:fs20edgem:n/user${i}:::
done
