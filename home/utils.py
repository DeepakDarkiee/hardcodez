import requests
from django.conf import settings
from django.contrib import messages
from django.core import mail
from django.core.mail import send_mail
from django.http import HttpResponse
from django.shortcuts import render
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from hardcodez import settings
from mailchimp_marketing import Client
from mailchimp_marketing.api_client import ApiClientError
from django_mail_template.models import Configuration

def contact_mail(recipient):
        mail_template = Configuration.get_mail_template("contact_mail")
        mail_template.to = recipient
        mail_template.send()
        return "OK"



def subscription_mail(recipient):
    mail_template = Configuration.get_mail_template("subscribe_mail")
    mail_template.to = recipient
    mail_template.send()
    return "OK"

def post_mail(recipients,title,slug,banner):
    mail_template = Configuration.get_mail_template("post_mail")
    for recipient in recipients:
        mail_template.to =[recipient]
        mail_template.send({"title": title,
                            "slug": slug,
                            "banner":banner
                            })
    return "OK"











# # Mailchimp Settings
# api_key = settings.MAILCHIMP_API_KEY
# server = settings.MAILCHIMP_DATA_CENTER
# list_id = settings.MAILCHIMP_EMAIL_LIST_ID


# Subscription Logic
# def subscribe(email):
    """
    Contains code handling the communication to the mailchimp api
    to create a contact/member in an audience/list.
    """

    mailchimp = Client()
    mailchimp.set_config(
        {
            "api_key": api_key,
            "server": server,
        }
    )

    member_info = {
        "email_address": email,
        "status": "subscribed",
    }

    try:
        response = mailchimp.lists.add_list_member(list_id, member_info)
        print("response: {}".format(response))
    except ApiClientError as error:
        print("An exception occurred: {}".format(error.text))
