from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from django.core.mail import send_mail
from django.db.models import Count, F, Q
from django.http import Http404, HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from django.views import View, generic
from django.views.generic import ListView, TemplateView
from django.views.generic.detail import DetailView
from taggit.models import Tag

from .models import Post


class PostList(ListView):

    queryset = Post.objects.filter(status=1).order_by("-created_on")
    template_name = "home/home.html"
    paginate_by = 6
    context_object_name = "Posts"

    # def get(self, request, *args, **kwargs):
    #     post = Post.objects.filter(status=1).order_by("-created_on")
    #     recent_post = Post.objects.filter(status=1).order_by("-created_on")[:4]
    #     popular_post = Post.objects.filter(views__gt=10)
    #     popular_post = list(popular_post)[:2]
    #     context = {"Posts": post, "popular_post": popular_post,"recent_post":recent_post}
    #     return render(request, "home/home.html", context)


class PostGrid(ListView):
    queryset = Post.objects.filter(status=1).order_by("-created_on")
    template_name = "blog/articles.html"
    context_object_name = "Posts"
    paginate_by = 12


class PostDetailView(View):
    def get(self, request, slug, *args, **kwargs):
        try:
            post = Post.objects.get(slug=slug, status=1)
            post.views = post.views + 1
            post.save()
            popular_post = post.tags.most_common()
            popular_post = set(Post.objects.filter(tags__in=popular_post))
            popular_post = list(popular_post)[:2]
            context = {"object": post, "popular_post": popular_post}
        except ObjectDoesNotExist:
            raise Http404

        return render(request, "blog/post_detail.html", context)

    # model = Post
    # template_name = "blog/post_detail.html"
    # queryset=Post.objects.filter(status=1)

    # def get_context_data(self, **kwargs):
    #     context = super().get_context_data(**kwargs)
    #     context['related_post'] = self.queryset.filter(tags__name__in=["red"])
    #     return context


class Tagged(View):
    def get(self, request, slug, *args, **kwargs):
        tag = get_object_or_404(Tag, slug=slug)
        # Filter posts by tag name
        posts = Post.objects.filter(tags=tag)
        context = {
            "tag": tag,
            "Posts": posts,
        }
        return render(request, "home/home.html", context)


class SearchView(View):
    def get(self, request, *args, **kwargs):
        return render(request, "blog/search.html")


class AboutView(View):
    def get(self, request, *args, **kwargs):
        return render(request, "blog/about.html")


class SearchArticleView(ListView):
    model = Post
    template_name = "blog/search.html"

    def get_queryset(self):
        query = self.request.GET.get("q")  # new
        object_list = Post.objects.filter(
            Q(title__icontains=query) | Q(content__icontains=query)
        )
        return object_list
