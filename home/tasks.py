import random

from celery import Celery, shared_task
from celery.schedules import crontab

from home.models import Subscribe
from home.utils import subscription_mail, contact_mail,post_mail

from django.core.mail import send_mail
from deepakpatidar import settings


app = Celery()


@shared_task(name="contact_mail_tasks")
def contact_mail_tasks(recipient):
    contact_mail(recipient)
    return True

@shared_task(name="subscription_mail_tasks")
def subscription_mail_tasks(recipient):
    subscription_mail(recipient)
    return True


@shared_task(name="post_mail_tasks()")
def post_mail_tasks(title,slug,banner):
    subscribe = Subscribe.objects.all()
    recipient_list = list(subscribe)
    post_mail(recipient_list,title,slug,banner)

# @shared_task(name = "dbbackup")
# def Data_backup_task(db_back):
#     crontab(minute = "*")