from http import HTTPStatus
from django.contrib.auth.models import User
from django.test import TestCase
from blog.models import Post

# Create your tests here.
class RobotsTest(TestCase):
    def test_get(self):
        response = self.client.get("/robots.txt")

        self.assertEqual(response.status_code, HTTPStatus.OK)
        self.assertEqual(response["content-type"], "text/plain")
        lines = response.content.decode().splitlines()
        self.assertEqual(lines[0], "User-Agent: *")

    def test_post(self):
        response = self.client.post("/robots.txt")

        self.assertEqual(response.status_code, HTTPStatus.METHOD_NOT_ALLOWED)

class PostModelTest(TestCase):
        def test_string_representation(self):
                post=Post(title='My post title')
                self.assertEqual(str(post),post.title)

        @classmethod
        def setUpTestData(self):
                user=User.objects.create(username='rohit',password='rohit@1234')
                Post.objects.create(title=100,description='python post',slug='Hi hardcoderz',
                author=user,banner='maxresdefault.jpg',tags='kapil,rohit,aditya',content='my testcases',
                status=0,views=0)

        def test_if_wrong_post_data(self):
                post=Post.objects.get(id=1)
                user=User.objects.get(id=1)
                with self.assertRaises(AssertionError):
                        self.assertEqual(post.title,'xdcf')
                        self.assertEqual(post.description,'post')
                        self.assertEqual(post.slug,'Hi')
                        self.assertEqual(post.author,user)
                        self.assertEqual(post.banner,post.banner)
                        self.assertEqual(post.tags,post.tags)
                        self.assertEqual(post.content,'my')
                        self.assertEqual(post.updated_on,post.updated_on)
                        self.assertEqual(post.created_on,post.created_on)
                        self.assertEqual(post.status,1)
                        self.assertEqual(post.views,1)

        def test_slug_label(self):
                post=Post.objects.get(id=1)
                field_label=post._meta.get_field('slug').verbose_name
                with self.assertRaises(AssertionError):
                        self.assertEqual(field_label,'integer')   

        def test_slug_max_length(self):
                post = Post.objects.get(id=1)
                max_length = post._meta.get_field('slug').max_length
                with self.assertRaises(AssertionError):
                        self.assertEqual(max_length, 20)          

        def test_title_max_length(self):
                post = Post.objects.get(id=1)
                max_length = post._meta.get_field('title').max_length
                with self.assertRaises(AssertionError):
                        self.assertEqual(max_length,20)
             
                

                     
          
