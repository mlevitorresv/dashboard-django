"""
URL configuration for dashboard project.

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
from django.urls import path
from django.views.generic import TemplateView
from hotelMiranda.views import contactsViews, roomsViews, bookingViews

urlpatterns = [
    path('', TemplateView.as_view(template_name='index.html'), name='index'),
    # path('rooms/', TemplateView.as_view(template_name='rooms.html'), name='rooms'),
    path('rooms/', roomsViews.view_rooms, name='rooms'),
    # path('room/<int:id>', TemplateView.as_view(template_name='roomDetails.html'), name='roomDetails'),
    path('rooms/<int:room_id>', roomsViews.view_room_id, name='room'),
    path('offers/', roomsViews.view_rooms_offers, name='offers'),
    path('contact/', TemplateView.as_view(template_name='contact.html'), name='contact'),
    path('about/', TemplateView.as_view(template_name='about.html'), name='about'),
    
    # path('admin/', admin.site.urls),
    
    
    # path('rooms/<int:room_id>', roomsViews.view_room_id, name='room'),
    
    # path('contacts/', contactsViews.view_contacts, name='contacts'),
    # path('contacts/new', contactsViews.post_contact, name='new_contact'),
    
    
    # path('bookings/', bookingViews.post_booking, name='new_booking')
]
