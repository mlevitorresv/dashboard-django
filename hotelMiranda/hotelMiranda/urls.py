"""
URL configuration for hotelMiranda project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView
from website.views import contactsViews, roomsViews, indexViews

urlpatterns = [
    path('admin/', admin.site.urls),
    
    path('', indexViews.index, name='index'),
    path('rooms/', roomsViews.view_rooms, name='rooms'),
    path('rooms/<int:room_id>', roomsViews.view_room_id, name='roomDetails'),
    path('offers/', roomsViews.view_rooms_offers, name='offers'),
    path('contact/', contactsViews.post_contact, name='contact'),
    path('about/', TemplateView.as_view(template_name='about.html'), name='about'),
    
    path('accounts/', include('django.contrib.auth.urls'))

]
