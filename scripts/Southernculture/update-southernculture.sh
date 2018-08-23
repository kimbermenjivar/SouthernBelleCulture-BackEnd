#!/bin/bash

curl "http://localhost:4741/southerncultures/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "southernculture": {
      "quote":"'"${QUOTE}"'",
      "user_id": "'"${USER}"'",
      "about": "'"${ABOUT}"'",
      "image": "'"${PHOTO}"'"

    }
  }'

echo
