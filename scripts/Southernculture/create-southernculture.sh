#!/bin/bash

curl "http://localhost:4741/southerncultures" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "southernculture": {
      "quote": "'"${QUOTE}"'",
      "user_id": "'"${USER}"'",
      "about": "'"${ABOUT}"'",
      "image": "'"${PHOTO}"'"
    }
  }'

echo
