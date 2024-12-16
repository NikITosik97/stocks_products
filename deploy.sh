#!/bin/bash

cd /home/nikita/stocks_products
git pull --rebase origin main
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic
sudo systemctl restart gunicorn
