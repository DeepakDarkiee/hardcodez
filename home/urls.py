from blog.views import *
from django.urls import path

from home.views import *

urlpatterns = [
    # path("home/", HomeView.as_view(), name="home"),
    path("", PostList.as_view(), name="post-list"),
    path("index.html/", PostList.as_view(), name="post-list"),
    path("subscribe/", Subscription.as_view(), name="subscribe"),
    path("contact/", ContactView.as_view(), name="contact"),
    path("google_search/", GoogleSearchView.as_view(), name="google_search"),
]
