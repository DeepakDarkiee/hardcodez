from django.test import TestCase
from home.models import Subscribe,Contact

class SubscribeTestCase(TestCase):
        def setUp(self):
                Subscribe.objects.create(email='email@app.com')

        def tes_email_work(self):
                em=Subscribe.objects.get(email='email@app.com')
                self.assertEqual(em.email,'email@app.com')        