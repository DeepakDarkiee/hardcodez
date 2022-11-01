from django.urls import path

from blog.views import *

from .feeds import AtomSiteNewsFeed, LatestPostsFeed

urlpatterns = [
    path("feed/rss", LatestPostsFeed(), name="post_feed"),
    path("feed/atom", AtomSiteNewsFeed()),
    path("articles/", PostGrid.as_view(), name="articles"),
    path("search/", SearchView.as_view(), name="search"),
    path("about/", AboutView.as_view(), name="about"),
    path("search-article/", SearchArticleView.as_view(), name="search-article"),
    path("<slug:slug>/", PostDetailView.as_view(), name="post-detail"),
    path("article/<slug:slug>", Tagged.as_view(), name="tagged"),
]
