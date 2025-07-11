# Django Deployment with Gunicorn and Nginx on Ubuntu

This project demonstrates how to deploy a Django application using **Gunicorn** as the WSGI HTTP server and **Nginx** as the reverse proxy server on Ubuntu.

## 📦 Features

- Django setup in a Python virtual environment
- Gunicorn as WSGI application server
- systemd unit for managing Gunicorn
- Nginx config to serve static files and reverse proxy to Gunicorn
- Easy-to-follow deployment script

## 🧪 Requirements

- Ubuntu/Debian system
- Python 3
- Nginx installed
- Django app placed inside `myproject/`

## 🛠️ Installation Steps

```bash
chmod +x setup.sh
./setup.sh
```

## 🔧 Gunicorn systemd Unit

You’ll find a customizable `gunicorn.service` file for systemd located at `/etc/systemd/system/gunicorn.service`.

## 🌐 Nginx Config

Nginx server block configuration is provided in `nginx-config/mysite`.

## 👨‍💻 Author
*KD Jonaid*
📧 kdjonaid.raninagar@gmail.com 
