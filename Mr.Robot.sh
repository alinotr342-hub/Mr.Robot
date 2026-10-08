#!/bin/bash
echo "[+] Updating package list and installing Docker..."
sudo apt update && sudo apt install docker.io -y

echo "[+] Starting Docker service..."
sudo systemctl start docker

echo "[+] Pulling Pentest Web Lab Image..."
sudo docker pull justhumanz/web_for_pentest

echo "[+] Launching Pentest Lab on http://localhost ..."
sudo docker run --rm -it -p 80:80 justhumanz/web_for_pentest