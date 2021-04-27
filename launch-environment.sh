echo "Starting Localstack"
docker-compose up -d
sleep 5

echo "Applying terraform"
terraform -chdir=terraform init
terraform -chdir=terraform apply
