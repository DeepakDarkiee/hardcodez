

from .base import *

DEBUG = True

ALLOWED_HOSTS = ["*"]


DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "djangobabu_db",
        "USER": "postgres",
        "PASSWORD": "new_password",
        "HOST": "localhost",
        "PORT": "5432",
    }
}