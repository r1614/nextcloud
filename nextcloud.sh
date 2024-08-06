#!/bin/bash

check_docker_installed() {
    if command -v docker >/dev/null 2>&1; then
        echo "Docker is already installed."
        return 0
    else
        echo "Docker is not installed."
        return 1
    fi
}

install_docker() {
    echo "Downloading Docker installation script..."
    wget -O get-docker.sh https://get.docker.com
    echo "Making the script executable..."
    chmod +x get-docker.sh
    echo "Running Docker installation script..."
    ./get-docker.sh
}

if check_docker_installed; then
    echo "Skipping Docker installation."
else
    echo "Starting Docker installation."
    install_docker
fi

mkdir -p /data/nextcloud

cd /data/nextcloud

wget -O docker-compose.yml https://raw.githubusercontent.com/r1614/nextcloud/main/nextcloud.yml > /dev/null

echo "downloaded docker compose file"

docker compose up -d

echo "default db is nextcloud(db_name)/nextcloud(db_id)/nextcloud(db_password)/nextcloud(db_rootpassword)/3306(db)/8118(nextcloud)"

exit 0
