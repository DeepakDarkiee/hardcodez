import os
from pathlib import Path

from django.contrib.messages import constants as messages

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent.parent

# SECRET_KEY = "django-insecure-vl9!07nu2)o9q-6=%$abywi84=wz2eh4f0e@e@xt83e2qbvn00"
SECRET_KEY = "aE1so1N8N7k046ymGYQRbhFfgI3-zaowr1k6I1uYFFfLp9SsRh-v_xQUKQLCWNKGCZ-5"

base_app = [
    "jazzmin",
    "ckeditor",
    "ckeditor_uploader",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "django.contrib.sites",
    "django.contrib.sitemaps",
]

my_app = [
    "home.apps.HomeConfig",
    "blog.apps.BlogConfig",
    "tinymce",
    "taggit",
    "django_celery_beat",
    "django_celery_results",
    "import_export",
    "django_mail_template",
    "admin_honeypot",
    "django_otp",
    "django_otp.plugins.otp_totp",
    "django_otp.plugins.otp_static",
]

INSTALLED_APPS = base_app + my_app

MIDDLEWARE = [
    "django.middleware.cache.UpdateCacheMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.cache.FetchFromCacheMiddleware",
    "django.middleware.security.SecurityMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    'django_otp.middleware.OTPMiddleware',
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]


WSGI_APPLICATION = "djangobabu.wsgi.application"

IMPORT_EXPORT_USE_TRANSACTIONS = True


TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [os.path.join(BASE_DIR, "templates")],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]


AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]

LANGUAGE_CODE = "en-us"

TIME_ZONE = "Asia/Kolkata"

USE_I18N = True

USE_L10N = True

USE_TZ = False

STATIC_URL = "/static/"

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"


STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")
STATIC_URL = "/static/"

STATICFILES_DIRS = (os.path.join(BASE_DIR, "static"),)

MEDIA_ROOT = os.path.join(BASE_DIR, "media")
MEDIA_URL = "/media/"


TINYMCE_DEFAULT_CONFIG = {
    "theme": "silver",
    "width": "100%",
    "height": 300,
    "menubar": "file edit view insert format tools table help",
    "plugins": "codesample advlist autolink lists link image charmap print preview anchor searchreplace visualblocks code "
    "fullscreen insertdatetime media table paste code help wordcount spellchecker",
    "toolbar": "undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft "
    "aligncenter alignright alignjustify | outdent indent |  numlist bullist checklist | forecolor "
    "backcolor casechange permanentpen formatpainter removeformat | pagebreak | charmap emoticons | "
    "fullscreen  preview save print | insertfile image media pageembed template link anchor codesample | "
    "a11ycheck ltr rtl | showcomments addcomment code",
    "custom_undo_redo_levels": 10,
    "language": "en",  # To force a specific language instead of the Django current language.
}
TINYMCE_SPELLCHECKER = True

X_FRAME_OPTIONS = "SAMEORIGIN"
# ...
SITE_ID = 1

####################################
##  CKEDITOR CONFIGURATION ##
####################################

CKEDITOR_JQUERY_URL = "https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"

CKEDITOR_UPLOAD_PATH = "uploads/"
CKEDITOR_IMAGE_BACKEND = "pillow"
CKEDITOR_FORCE_JPEG_COMPRESSION = True
CKEDITOR_CONFIGS = {
    "default": {
        "height": 291,
        "width": "100%",
        "skin": "kama",
        "toolbar": "full",
        "extraPlugins": ",".join(
            [
                "codesnippet",
            ]
        ),
        "codeSnippet_theme": "default",
    },
}
###################################


MAILCHIMP_API_KEY = "288e7d569ddd6463f72a71e057687ea2-us5"
MAILCHIMP_DATA_CENTER = "us5"
MAILCHIMP_EMAIL_LIST_ID = "b1f53dd0b8"


CELERY_RESULT_BACKEND = "django-db"

EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
EMAIL_HOST = "smtp.gmail.com"

# EMAIL_USE_SSL = True
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = "noreply.hardcodez@gmail.com"
EMAIL_HOST_PASSWORD = "aukhbsznhmcfvrxj"

CELERY_BROKER_URL = "redis://localhost:6379/"
# CELERY_RESULT_BACKEND =  'amqp://localhost'
CELERY_ACCEPT_CONTENT = ["application/json"]
CELERY_RESULT_SERIALIZER = "json"
CELERY_TASK_SERIALIZER = "json"
CELERY_IGNORE_RESULT = True
CELERY_REDIRECT_STDOUTS_LEVEL = False


JAZZMIN_SETTINGS = {
    # title of the window (Will default to current_admin_site.site_title if absent or None)
    "site_title": "Django Babu",
    # Title on the brand, and login screen (19 chars max) (defaults to current_admin_site.site_header if absent or None)
    "site_header": "Django Babu",
    # Logo to use for your site, must be present in static files, used for brand on top left
    "site_logo": "logo/db logo.svg",
    # CSS classes that are applied to the logo above
    "site_logo_classes": "img-circle",
    # Relative path to a favicon for your site, will default to site_logo if absent (ideally 32x32 px)
    "site_icon": None,
    # Welcome text on the login screen
    "welcome_sign": "Welcome to the Django Babu",
    # Copyright on the footer
    "copyright": "www.djangobabu.com",
    # The model admin to search from the search bar, search bar omitted if excluded
    "search_model": "blog.post",
    # Field name on user model that contains avatar image
    "user_avatar": None,
    ############
    # Top Menu #
    ############
    # Links to put along the top menu
    "topmenu_links": [
        # Url that gets reversed (Permissions can be added)
        {"name": "Home", "url": "admin:index", "permissions": ["auth.view_user"]},
        # external url that opens in a new window (Permissions can be added)
        {
            "name": "Support",
            "url": "https://github.com/DeepakDarkiee",
            "new_window": True,
        },
        # model admin to link to (Permissions checked against model)
        {"model": "auth.User"},
        # App with dropdown menu to all its models pages (Permissions checked against models)
        {"app": "blog"},
    ],
    #############
    # User Menu #
    #############
    # Additional links to include in the user menu on the top right ("app" url type is not allowed)
    # "usermenu_links": [
    #     {"name": "Support", "url": "https://github.com/farridav/django-jazzmin/issues", "new_window": True},
    #     {"model": "auth.user"}
    # ],
    #############
    # Side Menu #
    #############
    # Whether to display the side menu
    "show_sidebar": True,
    # Whether to aut expand the menu
    "navigation_expanded": True,
    # Hide these apps when generating side menu e.g (auth)
    "hide_apps": [],
    # Hide these models when generating side menu (e.g auth.user)
    "hide_models": [],
    # List of apps (and/or models) to base side menu ordering off of (does not need to contain all apps/models)
    "order_with_respect_to": ["auth", "post", "post.author", "post.created_on"],
    "icons": {
        "auth": "fas fa-users-cog",
        "auth.user": "fas fa-user",
        "auth.Group": "fas fa-users",
    },
    # Icons that are used when one is not manually specified
    "default_icon_parents": "fas fa-chevron-circle-right",
    "default_icon_children": "fas fa-circle",
    #################
    # Related Modal #
    #################
    # Use modals instead of popups
    "related_modal_active": True,
    #############
    # UI Tweaks #
    #############
    # Relative paths to custom CSS/JS scripts (must be present in static files)
    "custom_css": None,
    "custom_js": None,
    # Whether to show the UI customizer on the sidebar
    "show_ui_builder": True,
    ###############
    # Change view #
    ###############
    # Render out the change view as a single form, or in tabs, current options are
    # - single
    # - horizontal_tabs (default)
    # - vertical_tabs
    # - collapsible
    # - carousel
    "changeform_format": "horizontal_tabs",
    # override change forms on a per modeladmin basis
    "changeform_format_overrides": {
        "auth.user": "collapsible",
        "auth.group": "vertical_tabs",
    },
    # Add a language dropdown into the admin
    # "language_chooser": True,
}

JAZZMIN_UI_TWEAKS = {
    "navbar_small_text": False,
    "footer_small_text": False,
    "body_small_text": True,
    "brand_small_text": False,
    "brand_colour": "navbar-success",
    "accent": "accent-success",
    "navbar": "navbar-success navbar-dark",
    "no_navbar_border": False,
    "navbar_fixed": False,
    "layout_boxed": False,
    "footer_fixed": False,
    "sidebar_fixed": False,
    "sidebar": "sidebar-dark-success",
    "sidebar_nav_small_text": False,
    "sidebar_disable_expand": False,
    "sidebar_nav_child_indent": False,
    "sidebar_nav_compact_style": False,
    "sidebar_nav_legacy_style": True,
    "sidebar_nav_flat_style": False,
    "theme": "cosmo",
    "dark_mode_theme": None,
    "button_classes": {
        "primary": "btn-outline-primary",
        "secondary": "btn-outline-secondary",
        "info": "btn-outline-info",
        "warning": "btn-outline-warning",
        "danger": "btn-outline-danger",
        "success": "btn-outline-success",
    },
}

ROOT_URLCONF = "djangobabu.urls"
