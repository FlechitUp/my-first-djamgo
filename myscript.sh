#!/bin/bash
python manage.py migrate

python manage.py makemigrations blog
python manage.py migrate blog

sudo fuser -k 8000/tcp
python manage.py runserver