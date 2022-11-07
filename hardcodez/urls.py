"""resume_maker URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from blog.sitemaps import PostSitemap
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.sitemaps.views import sitemap
from django.urls import include, path
from django.views.generic.base import TemplateView
from django_otp.admin import OTPAdminSite
#my change



def trigger_error(request):
    division_by_zero = 1 / 0


sitemaps = {
    "posts": PostSitemap,
}


urlpatterns = [
    path("sentry-debug/", trigger_error),
    # path("admin/", include("admin_honeypot.urls", namespace="admin_honeypot")),
    path("panel/", admin.site.urls),
    path("", include("home.urls")),
    path("", include("blog.urls")),
    path("tinymce/", include("tinymce.urls")),
    path("ckeditor/", include("ckeditor_uploader.urls")),
    path("sitemap.xml", sitemap, {"sitemaps": sitemaps}, name="sitemap"),
    path(
        "robots.txt",
        TemplateView.as_view(template_name="robots.txt", content_type="text/plain"),
    ),
   
    # path("taggit_autosuggest",include("taggit_autosuggest.urls"))
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if not settings.DEBUG:
    admin.site.__class__ = OTPAdminSite

handler404 = "home.views.handler404"
handler500 = "home.views.handler500"
