# All Things (in that category)
curl --include --request GET http://localhost:4741/categories/$ID/things
  --header "Authorization: Token token=$TOKEN"

# Show One Thing
curl --include --request GET http://localhost:4741/things/$ID

# Create Thing
curl --include --request POST http://localhost:4741/categories/$ID/things \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "thing": {
      "name": "Lagunitas"
    }
  }'
