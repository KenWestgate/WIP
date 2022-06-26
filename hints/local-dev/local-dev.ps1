# postgres
docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword --publish 5432:5432 -d postgres
# redis
docker run --name redis --rm -it --publish 6379:6379 -d redis
# kafka (uses docker-compose file)
docker compose up --detach