from django.contrib import admin
from import_export.admin import ImportExportModelAdmin

from .models import Post

# Register your models here.


class PostAdmin(ImportExportModelAdmin):
    list_display = (
        "title",
        "slug",
        "status",
        "tags",
        "created_on",
        "updated_on",
    )
    fields = (
        "title",
        "slug",
        "description",
        "author",
        "banner",
        "banner_preview",
        "status",
        "tags",
        "content",
        "views"
    )
    autocomplete_fields = ['tags'   ]
    list_filter = ("status", "created_on", "tags")
    search_fields = ["title", "content"]
    summernote_fields = "content"
    prepopulated_fields = {"slug": ("title",)}
    readonly_fields = ("banner_preview",)

    def banner_preview(self, obj):
        return obj.banner_preview

    banner_preview.short_description = "Banner Preview"
    banner_preview.allow_tags = True


admin.site.register(Post, PostAdmin)
