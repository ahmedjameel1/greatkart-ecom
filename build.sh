#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input

python manage.py makemigrations accounts
python manage.py makemigrations category
python manage.py makemigrations store
python manage.py makemigrations carts
python manage.py makemigrations orders

# Apply any outstanding database migrations
python manage.py migrate