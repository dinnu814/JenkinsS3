echo %DATE%
echo %TIME%
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %datetimef%
aws ec2 describe-instances >> instance.json

aws s3 mv instance.json s3://dinnu814/instance_%datetimef%.json
