#!/bin/bash

curl --include --request POST http://localhost:4741/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'

  curl --include --request POST http://localhost:4741/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "antony@antony.com",
        "password": "abc123"
      }
    }'

    curl --include --request POST http://localhost:4741/sign-in \
      --header "Content-Type: application/json" \
      --data '{
        "credentials": {
          "email": "butts@butts.com",
          "password": "123"
        }
      }'
