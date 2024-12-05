rm -rf property-management-service
rm -rf user-service
rm -rf auth-service
rm -rf rentology-frontend

rm -rf property_data
rm -rf user_data
rm -rf auth_data

rm -rf property_migrations
rm -rf user_migrations
rm -rf auth_migrations

git clone git@github.com:Rentology/property-management-service.git
git clone git@github.com:Rentology/user-service.git
git clone git@github.com:Rentology/auth-service.git
git clone git@github.com:Rentology/rentology-frontend.git

cp ./configs/.env.production rentology-frontend/

docker-compose down
docker-compose build --no-cache
docker-compose up -d