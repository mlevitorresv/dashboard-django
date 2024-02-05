from django.db import models

class Rooms(models.Model):
    number = models.IntegerField()
    photo = models.CharField(max_length=255)
    type = models.CharField(max_length=255)
    bed = models.CharField(max_length=255)
    amenities = models.JSONField()
    descrption = models.CharField(max_length=255)
    rate = models.FloatField()
    price = models.FloatField()
    discount = models.IntegerField()
    available = models.BooleanField()