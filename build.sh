#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input

python manage.py migrate

# python manage.py makemigrations accounts
# python manage.py migrate accounts
# python manage.py makemigrations category
# python manage.py migrate category
# python manage.py makemigrations store
# python manage.py migrate store
# python manage.py makemigrations carts
# python manage.py migrate carts
# python manage.py makemigrations orders
# python manage.py migrate orders