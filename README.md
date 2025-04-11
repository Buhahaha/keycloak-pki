# keycloak-pki
Setup base keycloak to take in pki cert which are self signed

mkdir -p certs

openssl req -x509 -newkey rsa:4096 -nodes \
  -keyout ./certs/key.pem \
  -out ./certs/cert.pem \
  -days 365 \
  -subj "/CN=localhost"


🚀 Run the Stack

docker compose up --build -d
Then visit:

https://localhost:8443
Login with:

Username: admin
Password: admin123


docker compose down -v
docker compose build --no-cache
docker compose up
