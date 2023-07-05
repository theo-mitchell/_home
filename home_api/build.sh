#!/usr/bin/env bash
# exit on error
set -o errexit

poetry install

which python3

python manage.py collectstatic --no-input
python manage.py migrate
