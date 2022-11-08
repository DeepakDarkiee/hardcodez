from blog.models import Post
from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
import json
from home.models import Subscribe
from home.tasks import post_mail_tasks


@receiver(post_save, sender=Post)
def send_post_mail(sender, instance, created, **kwargs):
    if created:
        title=instance.title
        slug=instance.slug
        banner=str(instance.banner)
        post_mail_tasks(title,slug,banner)
        pass
