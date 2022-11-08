import sys
from io import BytesIO
from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.auth.models import User
from django.core.files.uploadedfile import InMemoryUploadedFile
from django.db import models
from django.utils.html import mark_safe
from PIL import Image
from taggit_autosuggest.managers import TaggableManager
from taggit.managers import TaggableManager
from tinymce.models import HTMLField


STATUS = ((0, "Draft"), (1, "Publish"))

class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    description = models.TextField(null=True, blank=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name="blog_posts"
    )
    banner = models.ImageField(upload_to="image")
    tags = TaggableManager()
    content = RichTextUploadingField(blank=True)
    updated_on = models.DateTimeField(auto_now=True)
    created_on = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(choices=STATUS, default=0)
    views = models.IntegerField("Views", default=0)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        if not self.id:
            if self.banner:
                self.banner = self.compressImage(self.banner)
        super(Post, self).save(*args, **kwargs)

    def compressImage(self, uploadedImage):
        imageTemproary = Image.open(uploadedImage)
        outputIoStream = BytesIO()
        imageTemproaryResized = imageTemproary.resize((1020, 573))
        imageTemproary.save(outputIoStream, format="JPEG", quality=60)
        outputIoStream.seek(0)
        uploadedImage = InMemoryUploadedFile(
            outputIoStream,
            "ImageField",
            "%s.jpg" % uploadedImage.name.split(".")[0],
            "image/jpeg",
            sys.getsizeof(outputIoStream),
            None,
        )
        return uploadedImage

    def get_absolute_url(self):
        from django.urls import reverse

        return reverse("post-detail", kwargs={"slug": str(self.slug)})

    @property
    def banner_preview(self):
        if self.banner:
            return mark_safe(
                '<img src="{}" width="60%" height="100%" />'.format(self.banner.url)
            )
        return ""
