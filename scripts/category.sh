# All Categories
curl --include --request GET http://localhost:3000/categories \
  --header "Authorization: Token token=$TOKEN"

# Show One Category
curl --include --request GET http://localhost:3000/categories/1 \
  --header "Authorization: Token token=$TOKEN"

# Create Category
curl --include --request POST http://localhost:3000/categories \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "name": "Beer",
      "user_id": 1
    }
  }'

# Update Category
curl --include --request PATCH http://localhost:3000/categories/3 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "name": "Wine"
    }
  }'

# Delete Category
curl --include --request DELETE http://localhost:3000/categories/3 \
  --header "Authorization: Token token=$TOKEN"
