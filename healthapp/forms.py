from django import forms
from .models import Contact, UserAccount
from django.core.exceptions import ValidationError

class Contactform(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['name','email', 'message']
        widgets = {
            'name': forms.TextInput(attrs={
                'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Name'
            }),
            'email': forms.EmailInput(attrs={
                'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Email'
            }),
            'message': forms.TextInput(attrs={
                'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Message',
                'rows': 4
            }),
        }



#this are not use
class UserAccountForm(forms.ModelForm):
  
    confirm_password = forms.CharField(widget=forms.PasswordInput(attrs={'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Confirm Password'})
            )
    class Meta:
        model = UserAccount
        fields = ['fname','lname','username','email','password']
        
        widgets ={
            'fname': forms.TextInput(attrs={
                'class':' w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter First Name'
            }),
            'lname': forms.TextInput(attrs={
                'class':'w-full p-2 rounded ml-2 border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Last Name'
            }),
            'username': forms.TextInput(attrs={
                'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Username Name'
            }),
            'email': forms.EmailInput(attrs={
                'class':'w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Email'
            }),
            'password': forms.PasswordInput(attrs={
                'class':' w-full p-2 rounded border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#404f68]',
                'placeholder':'Enter Password'
            }),

        }
        def check(self):
            cleaned_data = super().clean()
            password = cleaned_data.get("password")
            confirm_password = cleaned_data.get("confirm_password")

            if password != confirm_password:
                raise ValidationError("Passwords do not match.")
            

     
