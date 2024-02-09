from django.db import models
from django.utils import timezone
import datetime

class Rooms(models.Model):
    number = models.IntegerField()
    photo = models.CharField(max_length=255)
    type = models.CharField(max_length=255)
    bed = models.CharField(max_length=255)
    amenities = models.JSONField()
    description = models.CharField(max_length=255)
    rate = models.FloatField()
    price = models.FloatField()
    discount = models.IntegerField()
    available = models.BooleanField()


class Contact(models.Model):
    photo = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    phone = models.CharField(max_length=9)
    comment = models.TextField()
    date = models.DateField(default=timezone.now().date())
    dateTime = models.TimeField(default=datetime.datetime.now().time())
    archived = models.BooleanField(default=False)
    


class Booking(models.Model):
    photo = models.CharField(max_length=255, default='https://castillotrans.eu/wp-content/uploads/2019/06/77461806-icono-de-usuario-hombre-hombre-avatar-avatar-pictograma-pictograma-vector-ilustraci%C3%B3n.jpg')
    name = models.CharField(max_length=255)
    email = models.EmailField()
    phone = models.CharField(max_length=129)
    orderDate = models.DateField(default=timezone.now().date())
    orderTime = models.TimeField(default=datetime.datetime.now().time())
    checkinDate = models.DateField()
    checkinTime = models.TimeField(default=datetime.time(12,00))
    checkoutDate = models.DateField()
    checkoutTime = models.TimeField(default=datetime.time(12,00))
    notes = models.TextField()
    roomId = models.ForeignKey(Rooms, on_delete=models.CASCADE)
    status = models.CharField(max_length=255, default='booked')
    
