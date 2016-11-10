# Show One Category
curl --include --request GET http://localhost:4741/category_contents/$ID \
  --header "Authorization: Token token=$TOKEN"

# Create Category
curl --include --request POST http://localhost:4741/category_contents \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU0MTMxMjgyZWUxMGY5OTllOThmYmY0OWM0ZWZkOTU0MgY6BkVG--c728b7ffb4fc49d763b70ebf1b297f627bedca59" \
  --data '{
    "category": {
      "name": "Beer",
      "user_id": 1
    }
  }'

# Update Category
curl --include --request PATCH http://localhost:4741/category_contents/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "name": "Wine"
    }
  }'

# Delete Category
curl --include --request DELETE http://localhost:4741/category_contents/$ID \
  --header "Authorization: Token token=$TOKEN"
