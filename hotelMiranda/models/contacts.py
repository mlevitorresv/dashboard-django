from django.db import models

class Contacts(models.Model):
    photo = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    phone = models.CharField(max_length=9)
    comment = models.TextField()
    date = models.DateField()
    dateTime = models.TimeField()
    archived = models.BooleanField()