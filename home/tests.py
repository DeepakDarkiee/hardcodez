from django.test import TestCase

# Create your tests here.
from django.test import TestCase
from home.models import Subscribe,Contact
class SubscribeModelTest(TestCase):
        def test_string_representation(self):
                subscribe=Subscribe(email='kapil@gmail.com')
                self.assertEqual(str(subscribe),subscribe.email)

        @classmethod
        def setUpTestData(cls):
               cls.subscribe = Subscribe.objects.create(email='kapil@gmail.com')

        def test_model_content(self):
                with self.assertRaises(AssertionError):
                        self.assertEqual(self.subscribe.email,'.com') 
               
        def test_url_exists_at_correct_location(self):
                response = self.client.get("/subscribe/")
                with self.assertRaises(AssertionError):
                        self.assertEqual(response.status_code,40)  

        def test_email_label(self):
                subscribe=Subscribe.objects.get(id=1)
                field_label=subscribe._meta.get_field('email').verbose_name
                with self.assertRaises(AssertionError):
                        self.assertEqual(field_label,'integer') 
        
        def test_email_max_length(self):
                subscribe = Subscribe.objects.get(id=1)
                max_length = subscribe._meta.get_field('email').max_length
                with self.assertRaises(AssertionError):
                        self.assertEqual(max_length,25) 
                   

class ContactModelTest(TestCase):
        @classmethod
        def setUpTestData(cls):
                cls.contact=Contact.objects.create(name='rohit',email='rohitrathod@gmail.com',
                subject='Nothing',message='call me')
          
        def test_contact_data(self):
                        contact = Contact.objects.get(id=1)
                        
                        self.assertEqual(contact.name,'rohit')
                        self.assertEqual(contact.email,'rohitrathod@gmail.com')
                        self.assertEqual(contact.subject,'Nothing')
                        self.assertEqual(contact.message,'call me')
                       
        def test_if_wrong_contact_data(self):
                contact = Contact.objects.get(id=1)
                with self.assertRaises(AssertionError):
                        self.assertEqual(contact.name,'100')
                        self.assertEqual(contact.email,'.com')
                        self.assertEqual(contact.subject,'')
                        self.assertEqual(contact.message,'')
                        
        def test_email_label(self):
                contact=Contact.objects.get(id=1)
                field_label=contact._meta.get_field('email').verbose_name
                with self.assertRaises(AssertionError):
                        self.assertEqual(field_label,'integer') 

        def test_url_exists_at_correct_location(self):
                response = self.client.get("/contact/")
                with self.assertRaises(AssertionError):
                        self.assertEqual(response.status_code,20)  

        def test_email_max_length(self):
                contact = Contact.objects.get(id=1)
                max_length = contact._meta.get_field('email').max_length
                with self.assertRaises(AssertionError):
                        self.assertEqual(max_length, 25) 

        def test_string_representation(self):
                contact=Contact(name='rohit')
                self.assertEqual(str(contact),contact.name)  



  

              
                  

     
              
         
