"""
WSGI config for deepakpatidar project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application
from decouple import config

ENV = config('ENV')

os.environ.setdefault('DJANGO_SETTINGS_MODULE', f'deepakpatidar.settings.{ENV}')

application = get_wsgi_application()

