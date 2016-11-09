# All Things
curl --include --request GET http://localhost:3000/things

# Show One Thing
curl --include --request GET http://localhost:3000/things/1

# Create Thing
curl --include --request POST http://localhost:3000/categories/1/things \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVkNDQ5YTFjYTk5MDMwNmE0NDIyZTM2YWUwYTU2ZGM3MwY6BkVG--f6bf2191918ea9c27676528a962458a0eab96ca8" \
  --data '{
    "thing": {
      "name": "Lagunitas"
    }
  }'

# Update Thing
curl --include --request PATCH http://localhost:3000/things/4 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "thing": {
      "name": "Pabst"
    }
  }'

# Delete Thing
curl --include --request DELETE http://localhost:3000/things/4 \
  --header "Authorization: Token token=$TOKEN"
