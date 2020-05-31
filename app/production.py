from .common import *


# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'development'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = ['localhost', 'savvateev.xyz', 'www.savvateev.xyz']

import os

DATABASES = {
    'default': {
        'NAME': 'db',
        'HOST': '192.168.2.2',
        'ENGINE': 'django.db.backends.postgresql',
        'USER': 'postgres'
    }
}



BASE_DIR = os.path.dirname(os.path.dirname(__file__))


STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'static/')

MEDIA_URL = '/media/'
#MEDIA_ROOT = os.path.join(REPOSITORY_ROOT, 'media/')
