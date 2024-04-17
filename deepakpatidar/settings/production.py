from .base import *

DEBUG = False

from decouple import config

ALLOWED_HOSTS = ["www.deepakpatidar.in", "deepakpatidar.in","*"]
import dj_database_url


CACHE_MIDDLEWARE_ALIAS = "default"  # which cache alias to use
CACHE_MIDDLEWARE_SECONDS = 60   # number of seconds to cache a page for (TTL)
CACHES = {
    "default": {
        "BACKEND": "django.core.cache.backends.db.DatabaseCache",
        "LOCATION": "deepakpatidar_cache",
    }
}

DEPLOYE = config('DEPLOYE')
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "deepakpatidar_db",
        "USER": "deepakpatidar",
        "PASSWORD": "deepakpatidar",
        "HOST": "localhost",
        "PORT": "5432",
    }
}

if DEPLOYE == 'heroku':
    DATABASES = {
        'default': dj_database_url.config(
            default=config('DATABASE_URL')
        )
    }

# SECURE_SSL_REDIRECT=True
SESSION_COOKIE_SECURE=True
CSRF_COOKIE_SECURE=True
X_FRAME_OPTIONS='DENY'
SECURE_HSTS_SECONDS = 86400  # 1 day
SECURE_HSTS_INCLUDE_SUBDOMAINS = True
SECURE_HSTS_PRELOAD = True
SECURE_BROWSER_XSS_FILTER = True
SECURE_CONTENT_TYPE_NOSNIFF = True

import sentry_sdk
from sentry_sdk.integrations.django import DjangoIntegration

sentry_sdk.init(
    dsn="https://be767489a7fe4fa480a3bc2c6dfb26c7@o4504119221944320.ingest.sentry.io/4504119222796288",
    integrations=[
        DjangoIntegration(),
    ],

    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    # We recommend adjusting this value in production.
    traces_sample_rate=1.0,

    # If you wish to associate users to errors (assuming you are using
    # django.contrib.auth) you may enable sending PII data.
    send_default_pii=True
)

