"""
ASGI config for hardcodez project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/asgi/
"""

import os

from django.core.asgi import get_asgi_application
from decouple import config

ENV = config('ENV')

os.environ.setdefault('DJANGO_SETTINGS_MODULE', f'hardcodez.settings{ENV}')

application = get_asgi_application()
