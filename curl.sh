
# POST with JSON
curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer [TOKEN]" \
  -d '{"key": "value"}' \
   http://localhost:6811/

# Multipart file upload
curl -i -X POST \
  -H "Content-Type: multipart/form-data" \
  -F "file=@empty.csv" \
  http://localhost:6851
