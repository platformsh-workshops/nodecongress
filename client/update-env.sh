#!/usr/bin/env bash

API_URL_UNTRIMMED=$(echo $PLATFORM_ROUTES | base64 --decode | jq -r 'to_entries[] | select (.value.id == "api") | .key')
string=$(echo $API_URL_UNTRIMMED | awk  '{ string=substr($0, 2, 3); print string; }' )
export NEXT_PUBLIC_API_URL=${API_URL_UNTRIMMED::-1}
export NEXT_PUBLIC_API_URL=${API_URL_UNTRIMMED::-1}
NEXT_PUBLIC_API_URL=$(API_URL_UNTRIMMED::-1)
export PREVIEW_SECRET=myNEWsecret
# printf "NEXT_PUBLIC_API_URL=${API_URL_UNTRIMMED::-1}\n" > .env
# printf "PREVIEW_SECRET=mysecret" >> .env
string=$(echo $string | awk -v var=$stringlen '{ string=substr($0, 1, var - 1); print string; }' )
echo $API_URL_UNTRIMMED | awk -v var=$stringlen '{ string=substr($0, 1, var-1); print string; }' 

NEXT_PUBLIC_API_URL=$(echo $PLATFORM_ROUTES | base64 --decode | jq -r 'to_entries[] | select (.value.id == "api") | .key')
stringlen=${#NEXT_PUBLIC_API_URL}
export NEXT_PUBLIC_API_URL=$(echo $NEXT_PUBLIC_API_URL | awk -v var=$stringlen '{ string=substr($0, 1, var - 1); print string; }' )
export PREVIEW_SECRET=myNEWsecret