# Create Content
curl --include --request POST http://localhost:3000/category_contents \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category_content": {
      "category_id": 2,
      "thing_id": 3
    }
  }'

# Update Content
curl --include --request PATCH http://localhost:3000/category_contents/3 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category_content": {
      "notes": "I love this"
    }
  }'

# Delete Content
curl --include --request DELETE http://localhost:3000/category_contents/5 \
  --header "Authorization: Token token=$TOKEN"
