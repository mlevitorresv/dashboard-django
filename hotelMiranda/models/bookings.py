from django.db import models
from rooms import Rooms

class Booking(models.Model):
    photo = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    orderDate = models.DateField()
    orderTime = models.TimeField()
    checkinDate = models.DateField()
    checkinTime = models.TimeField()
    checkoutDate = models.DateField()
    checkoutTime = models.TimeField()
    notes = models.TextField()
    roomId = models.ForeignKey(Rooms, on_delete=models.CASCADE)
    status = models.CharField(max_length=255)