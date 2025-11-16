from django.db import models
from django.utils.text import slugify
from django.utils import timezone
from django.contrib.auth.models import User
# Create your models here.

class Contact(models.Model):
    name=models.CharField(max_length=30)
    email=models.EmailField()
    message=models.TextField(default="Enter Message")
    date = models.DateField(default=timezone.now)

    def __str__(self):
        return self.email

class Category(models.Model):
    # id = models.IntegerField(unique=True, primary_key=True)
    name=models.CharField(max_length=30)
    slug = models.SlugField(unique=True, blank=True)
    
    def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.name)
            slug = base_slug
            counter = 1
            while Product.objects.filter(slug=slug).exists():
                slug = f"{base_slug}-{counter}"
                counter += 1
            self.slug = slug
        super().save(*args, **kwargs)

    def __str__(self):
        return self.name


class Product(models.Model):
     # #basic information
      name = models.CharField(max_length=100)
      slug = models.SlugField(unique=True, blank=True)
      category = models.ForeignKey(Category,null=True, on_delete=models.CASCADE)
      price = models.CharField(max_length=20,null=True)
     #prodct image
      image = models.ImageField(upload_to='produt_images/')
      #description
      short_description = models.CharField(max_length=500, null=True)
      description = models.TextField(default="No Long Description")
      #product details
      ingredients = models.TextField(blank=True, null=True)
      usage = models.TextField(blank=True, null=True)
      benefits= models.TextField(blank=True, null=True)
      manufacturer = models.TextField(blank=True, null=True)
      #product link 
      buy_link = models.URLField(blank=True, null=True)
      #SEO
      seo_title= models.CharField(max_length=100, blank=True, null=True)
      seo_description = models.CharField(max_length=300, blank=True, null=True)
     #date
      created= models.DateField(default=timezone.now)

#     #slug automatically create for product
      def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.name)
            slug = base_slug
            counter = 1
            while Product.objects.filter(slug=slug).exists():
                slug = f"{base_slug}-{counter}"
                counter += 1
            self.slug = slug
        super().save(*args, **kwargs)

      def __str__(self):
        return self.name


class UserAccount(models.Model):
    fname = models.CharField(max_length=40)
    lname = models.CharField(max_length=40)
    username = models.CharField(max_length=50)
    email = models.EmailField()
    password = models.CharField(max_length=50)
    date = models.DateField(default=timezone.now)

    def __str__(self):
        return self.email


class Wishlist(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,related_name='wishlist')
    product = models.ForeignKey(Product, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('user','product')

    def __str__(self):
        return f"{self.user.username}-{self.product.name}"




