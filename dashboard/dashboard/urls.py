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
from hotelMiranda.views import contactsViews, roomsViews, bookingViews

urlpatterns = [
    path('admin/', admin.site.urls),
    
    path('rooms/', roomsViews.view_rooms, name='rooms'),
    path('rooms/<int:room_id>', roomsViews.view_room_id, name='room'),
    
    path('contacts/', contactsViews.view_contacts, name='contacts'),
    path('contacts/new', contactsViews.post_contact, name='new_contact'),
    
    
    path('bookings/', bookingViews.post_booking, name='new_booking')
]
