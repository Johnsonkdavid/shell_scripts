#!/bin/bash

user=$(/usr/bin/aws iam list-users --profile aws_profile_name | jq -r  '.Users[].UserName')
echo $user
for x in $user
do
        echo $x
        delete=$(/usr/bin/aws iam delete-login-profile --user-name $x --profile aws_profile_name)
done


##This is a simple bash script using awscli to revoke the IAM console access to IAM users. Profile is the name of the aws profile.
