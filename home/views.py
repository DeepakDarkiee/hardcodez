from datetime import datetime

from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group
from django.core.exceptions import ObjectDoesNotExist
from django.db import IntegrityError
from django.http.response import HttpResponseRedirect
from django.shortcuts import HttpResponse, redirect, render
from django.template import RequestContext
from django.urls import reverse_lazy
from django.views import View, generic
from django.views.generic import TemplateView
from django.views.generic.edit import UpdateView
from django.core.mail import send_mail
from django.conf import settings

from home.models import Contact, Subscribe
from home.tasks import contact_mail_tasks,subscription_mail_tasks

from django.http import HttpResponse




class HomeView(TemplateView):
    template_name = "home/home.html"


class Subscription(View):
    def post(self, request, *args, **kwargs):
        email = request.POST.get("email")
        if Subscribe.objects.filter(email=email).count() > 0:
            messages.error(request, "Email  already in use")
            return redirect("/")
        else:
            Subscribe.objects.create(email=email)
            subscription_mail_tasks.delay(email)
            messages.success(request, "Email received. thank You! ")
            return redirect("/")



class ContactView(View):
    def post(self, request, *args, **kwargs):
        name = request.POST.get("name")
        email = request.POST.get("email")
        subject = request.POST.get("subject")
        message = request.POST.get("message")
        contact = Contact.objects.create(
            name=name, email=email, subject=subject, message=message
        )
        contact_mail_tasks.delay(email)
        messages.success(request, "Thank You! For Contacting Us ")  # message
        return HttpResponse("OK")

    def get(self, request, *args, **kwargs):
        return render(request, "contact.html")


class GoogleSearchView(View):
    def get(self, request, *args, **kwargs):
        return render(request, "home/google_search.html")


def handler404(request, *args, **argv):
    response = render(request, "404.html")
    response.status_code = 404
    return response


def handler500(request, *args, **argv):
    response = render(request, "505.html")
    response.status_code = 500
    return response

