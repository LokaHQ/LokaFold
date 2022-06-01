#!/bin/echo

#path="alphafold-dbs-mirrors/mgnfy/mgnify.fa"
#bucket=$(cut -d '/' -f 1 <<< "$path")
#key=$(cut -d '/' -f 2 <<< "$path")
#region='us-east-1'
#access="ASIA5OOGMKWD22UB66O7"
#secret="UO2KcO0qnD/xqYwqs8RCIJ6BkaQRh7sCVohHERer"
#token="FwoGZXIvYXdzEFgaDL8R+alYo0OL6GmtVSK3AUU8BR1rCz2HRQHgYQbIeohF/5cKSUrMAoqzYGjGpfI16r7tnF8uZd2cBch4Ioq7srVluzAB+V2UqPc4jm4/LnikhcIJw5q9h5PTZFZeUNTcco+VvuslwXBtd4NCpOREoVMNMAPhzotp4kx4twuvlBPNO0ZKL1ArG6Lv0lgnuxjhn56O1uFlGSY4kpHL1i6FJq96EwVMOC68mlQRicRTVC2sRz6Jb86KuJSDElNlsV5rILvckmUd9CjhmtyUBjItVfqT4tPNlC7Q+8J+GbXUGnB5o89dLmnymu/bHvOu6MheBxvJ6uYGeE0I0IHb"
#
#contentType="text/html; charset=UTF-8"
#date="`date -u +'%a, %d %b %Y %H:%M:%S GMT'`"
#resource="/${bucket}/${key}"
#output="mgnfiyDL.fa"
#
#string="GET\n\n${contentType}\n\nx-amz-date:${date}\n${resource}"
#signature=`/bin/echo -en "$stringToSign" | openssl sha1 -hmac "${secret}" -binary | base64`
#
#curl --location --request GET "${bucket}.s3.us-east-1.amazonaws.com/${key}" \
#--header "X-Amz-Security-Token: ${token}" \
#--header "X-Amz-Date: ${date}" \
#--header "Content-Type: ${contentType}" \
#--header "Authorization: AWS ${key}:${Signature}" \
#https://${bucket}.s3.amazonaws.com/${path} \
#-o $output
#--header "Authorization: AWS4-HMAC-SHA256 Credential=${access}/20220601/us-east-1/s3/aws4_request, SignedHeaders=content-type;host;x-amz-date;x-amz-security-token, Signature=${signature}" \
#-o $output
#
#yyyymmdd=`date +%Y%m%d`
#isoDate=`date --utc +%Y%m%dT%H%M%SZ`
#s3Bucket='alphafold-mirrors-dbs'
#region='us-1-east'
#access='ASIA5OOGMKWD2ORGCJVQ'
#secret='oZUWsceBM3Hqc0NDm9r4BkTGvBD4UrHzIWyMh9kj'
#token='FwoGZXIvYXdzEFwaDE32S5xxYbVZZzvVriK3AS4IYBbMCbQ1kGmiHlzO3ZVlt1KuxPfZe/UmuRW4cPfXw2qMDqJiJN6FL+JDf0lY+V5F/K5rtkv/X+JSz1j4U7O/WVmie3ldJmGelhwMw7Sk8V89P9STuMCr+pRi/UPvY0kPGxzz0hrPAum5ebVhi98F4J5+yC+ADEPRyPwPckXM2jxHueMIuO/KBU2sXryYCXtq6gQ+FEznVnVTNDa3YL805rRaGXi28JwrUiOx1/UdEWk+LBU5SijG/9yUBjItH023pac/4iCg7i3xfNrmRdzW+nZOoBbLsEvffGxfrf8NOAswCvwUMObtrtj2'
#output="mgnifyDL.fa"
#path="alphafold-dbs-mirrors/mgnfy/mgnify.fa"
#contentType="text/html; charset=UTF-8"
#contentHash=`openssl sha256 -hex ${contentType} | sed 's/.* //'`
#
#endpoint="s3-${region}.amazonaws.com"
#filename='mgnify/mgnify.fa'
#
#
#
#canonicalRequest="GET\n/${s3Bucket}/${filename}\nhost:${endpoint}\nx-amz-content-sha256:${contentHash}\nx-amz-date:${isoDate}\ncontent-length;host;x-amz-content-sha256;x-amz-date\n${contentHash}"
#canonicalRequestHash=`echo ${canonicalRequest} | openssl sha256 -hex | sed 's/.* //'`
#
#stringToSign="AWS4-HMAC-SHA256\n${isoDate}\n${yyyymmdd}/${region}/s3/aws4_request\n${canonicalRequestHash}"
##
#DateKey=`echo -n "${yyyymmdd}" | openssl sha256 -hex -hmac "AWS4${s3Bucket}" | sed 's/.* //'`
#DateRegionKey=`echo -n "${s3Bucket}" | openssl sha256 -hex -mac HMAC -macopt hexkey:${DateKey} | sed 's/.* //'`
#DateRegionServiceKey=`echo -n "s3" | openssl sha256 -hex -mac HMAC -macopt hexkey:${DateRegionKey} | sed 's/.* //'`
#SigningKey=`echo -n "aws4_request" | openssl sha256 -hex -mac HMAC -macopt hexkey:${DateRegionServiceKey} | sed 's/.* //'`
#
#signature=`echo -en ${stringToSign} | openssl sha256 -hex -mac HMAC -macopt hexkey:${SigningKey} | sed 's/.* //'`
#
#authoriz="Authorization: AWS4-HMAC-SHA256 Credential=${access}/${yyyymmdd}/${region}/s3/aws4_request, SignedHeaders=content-length;host;x-amz-content-sha256;x-amz-date, Signature=${signature}"
#curl -v -X GET -T "${filename}" \
#-H "Host: ${endpoint}" \
#-H "x-amz-security-token: ${token}" \
#-H "Content-Length: ${contentLength}" \
#-H "x-amz-date: ${isoDate}" \
#-H "x-amz-content-sha256: ${contentHash}" \
#-H "${authoriz}" \
#http://${endpoint}/${s3Bucket}/${filename} \
#-o $output

#curl --location --request GET "${s3Bucket}.s3.us-east-1.amazonaws.com/${filename}" \
#--header "x-amz-security-Token: ${token}" \
#--header "x-amz-date: ${isoDate}" \
#--header "content-length: ${contentLength}" \
#--header "content-type: ${contentType}" \
#--header "${authoriz}" \
#https://${s3Bucket}.s3.amazonaws.com/${path} \
#-o $output


file="mgnfy/mgnify.fa"
bucket="alphafold-mirrors-dbs"
resource="/${bucket}/${file}"
contentType="text/html; charset=UTF-8"
dateValue="`date +'%a, %d %b %Y %H:%M:%S %z'`"
#date="`date -u +'%a, %d %b %Y %H:%M:%S GMT'`"
stringToSign="GET

${contentType}
${dateValue}
${resource}"
s3Key='ASIA5OOGMKWDQBQA4NWF'
s3Secret='wSDiJFnO0UijxIyf9gKya59Fu7D9ALpZG90e1jhQ'
token='FwoGZXIvYXdzEF4aDPhH8AiVjxCfS6BlXyK3AfIBfVxxTs8c9vcaQ5FeCLBOCW0rB1pJ1z6LpXjoitNjMv5s8QdtyVy1ILNWukwxy1w9pKwfuYbMrnNeAFK47EAW6LY3cl/C0wzi1icVXMdzQot/TSrCLyXcgWKtkC6xAieC9RSsD6SfDQSkYsiCl9tdw58UzvMg0nXKFWuW8ZVCD3bTbiRYhuIz5EZKI5J4VFI6Aip3Ldk9xCpECcRwGMfd7M4sMy86Q/PvcKyMfvKSN7lCotvV4Sjrxt2UBjItN3JG0pO2mpSs21Lu8vG3DCH2s+5unlCADR+dpYueQNNWwOdYv7oqaiU/YdPb'
output="mgnifyDL.fa"

signature=`/bin/echo -en "$stringToSign" | openssl sha1 -hmac ${s3Secret} -binary | base64`
curl -H "Host: ${bucket}.s3.amazonaws.com" \
-H "x-amz-security-token: ${token}" \
-H "Date: ${dateValue}" \
-H "Content-Type: ${contentType}" \
-H "Authorization: AWS ${s3Key}:${signature}" \
https://${bucket}.s3.amazonaws.com/${file} \
-o $output