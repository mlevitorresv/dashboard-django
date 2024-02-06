from django.db import models

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
    
    def __str__(self):
        return f'room {self.number}'

class Contact(models.Model):
    photo = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    phone = models.CharField(max_length=9)
    comment = models.TextField()
    date = models.DateField()
    dateTime = models.TimeField()
    archived = models.BooleanField()
    
    def __str__(self):
        return f'room {self.name}'

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
    
    def __str__(self):
        return f'room {self.name}'