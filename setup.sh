#!/bin/bash

set -e

echo "🧰 Installing dependencies..."
sudo apt update
sudo apt install python3-pip python3-venv nginx -y

echo "📦 Setting up Django project..."
mkdir -p myproject && cd myproject
python3 -m venv venv
source venv/bin/activate
pip install django gunicorn
django-admin startproject mysite .

deactivate
cd ..

echo "📝 Setting up Gunicorn systemd service..."
sudo cp gunicorn.service /etc/systemd/system/gunicorn.service
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "🌐 Configuring Nginx..."
sudo cp nginx-config/mysite /etc/nginx/sites-available/mysite
sudo ln -sf /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx

echo "✅ Deployment completed!"
