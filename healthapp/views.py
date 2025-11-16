from django.shortcuts import render, get_object_or_404, redirect
from .models import Product, UserAccount , Wishlist ,Category
from .forms import Contactform
from django.contrib import messages
from django.contrib.auth.models import User #user create
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
#home page
def home(request):
    return render(request,'index.html')

# show all products in home page
def product_list(request):
    products = Product.objects.all()
    #user_data = UserAccount.objects.get(username=request.user)
    if request.user.is_authenticated:
            user_data= request.user
    else:
        user_data = None
    return render(request,'index.html', {'products': products, 'user_data':user_data})

# search product
def search_product(request):
    results=[]
    if request.method == 'POST':
        query = request.POST.get('query')
        results = Product.objects.filter(name__icontains=query)
    return render(request,'search_result.html', {'results':results,'query':query})

# detail product information for each product
def product_page(request, slug):
    product = get_object_or_404(Product, slug=slug)

    if request.user.is_authenticated:
        wishlist_ids = Wishlist.objects.filter(user=request.user).values_list('product_id', flat=True)
    else:
        wishlist_ids=None
    return render(request, 'product_page.html', {'product':product, 'wishlist_ids':wishlist_ids})

# contactus page to send data into database from user
def contact(request):
    if request.method == 'POST':
        form = Contactform(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request,'Your Message sent Successfully')
            return redirect('contact')
    else:
        pass
        #messages.error(request,'Message Not sent')
        form=Contactform()
    return render(request,'contact.html',{'form':form})

#create user account 
def User_Account(request):
    if request.method == 'POST':
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        email = request.POST.get('email')
        username = request.POST.get('username')
        password = request.POST.get('password')
        cpassword = request.POST.get('cpassword')

        if password == cpassword:
            #data are stored in database
            data = UserAccount(fname=fname, lname=lname, email=email, username=username, password=password)
            data.save()
            #user create
            myuser=User.objects.create_user(username=username,email=email,password=password)
            myuser.save()
            messages.success(request,"Account Create Successfully!")
            return redirect('home')
        else:
            messages.error(request,"Password are Not Matched!")
            return render(request,'useraccount.html')
    return render(request,'useraccount.html')

# login user into website    
def Login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request,username=username, password=password)

        if user is not None:
            login(request,user)
            messages.success(request,f'Welcome {user.username}')
            return redirect('user_profile',request.user.username)
        else:
            messages.error(request,'Invalid Username or Password')
            return redirect('login_account')
        
    return render(request,'login.html')

def logout_account(request):
    logout(request)
    messages.info(request,"Log out Successfully!")
    return redirect('login_account')


@login_required(login_url="/login")
def user_profile(request, username):
    user = get_object_or_404(User, username=username)
    user_data = UserAccount.objects.get(username = request.user)
    #wishlist items display in a user profile page
   
    return render(request,'user_profile.html',{'user':user,'user_data':user_data})

@login_required(login_url="/login")
def add_wishlist(request,product_id):
    product = get_object_or_404(Product, id=product_id)
    Wishlist.objects.get_or_create(user = request.user,product = product)
    return redirect('wishlist')

@login_required(login_url="/login")
def show_wishlist(request):
    user=request.user
    if request.user:
        wishlist_items = Wishlist.objects.filter(user=request.user)
        products = Product.objects.all()
        return render(request,'wishlist.html',{'wishlist_items' : wishlist_items, 'products':products})
    else:
        return redirect('login_account')
    
@login_required(login_url="/login")  
def remove_wishlist(request,product_id):
    product = get_object_or_404(Product,id=product_id)
    Wishlist.objects.filter(user=request.user,product=product).delete()
    return redirect('wishlist')

def categorys(request):
    products = Product.objects.all()
    category = Category.objects.all()
    return render(request,'category.html',{'products':products, 'category':category})
   
def product_by_category(request, slug):
    p_category = get_object_or_404(Category, slug=slug)
    products = Product.objects.filter(category=p_category) 
    return render(request,'category_page.html',{'p_category':p_category,'products':products})