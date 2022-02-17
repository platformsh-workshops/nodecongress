#!/usr/bin/env bash

API_URL_UNTRIMMED=$(echo $PLATFORM_ROUTES | base64 --decode | jq -r 'to_entries[] | select (.value.id == "api") | .key')
export NEXT_PUBLIC_API_URL=${API_URL_UNTRIMMED::-1}
export PREVIEW_SECRET=myNEWsecret
# printf "NEXT_PUBLIC_API_URL=${API_URL_UNTRIMMED::-1}\n" > .env
# printf "PREVIEW_SECRET=mysecret" >> .env
