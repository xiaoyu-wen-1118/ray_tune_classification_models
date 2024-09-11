#!/bin/bash
echo "Restarting wandb docker service"
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo systemctl restart docker
sudo chmod 666 /var/run/docker.sock
wandb server start
