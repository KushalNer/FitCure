from django.urls import path
from healthapp import views

urlpatterns = [
    path("", views.product_list , name="home"),
    path("search", views.search_product, name="search"),
    path("contactus/", views.contact, name="contact"),
    path("account/", views.User_Account, name="user_account"),
    path("login/", views.Login, name="login_account"),
    path("logout/", views.logout_account, name="logout_account"),
    path("category/", views.categorys, name="category"),

    path("product/<slug:slug>/", views.product_page, name="product_page"),
    path("userprofile/<str:username>/",views.user_profile , name="user_profile"),
    path("category/<slug:slug>/", views.product_by_category, name="category_product"),

    path("wishlist/",views.show_wishlist, name="wishlist"),
    path("wishlist/add/<int:product_id>/", views.add_wishlist, name="addwishlist"),
    path("wishlist/remove/<int:product_id>/", views.remove_wishlist, name="removewishlist"),

]
