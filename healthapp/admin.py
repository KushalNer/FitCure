from django.contrib import admin
from .models import Contact,Product,Category,UserAccount
# Register your models here.
admin.site.register(Product)
admin.site.register(Contact)
admin.site.register(Category)
admin.site.register(UserAccount)
