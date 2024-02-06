from django.shortcuts import render
from django.http import HttpResponse
from hotelMiranda.models import Contact


# Create your views here.
def view_contacts(request):
    data = Contact.objects.all()
    
    results = []
    for contact in data:
        results.append(f'ID: {contact.id}, photo: {contact.photo}, name: {contact.name}, email: {contact.email}, phone: {contact.phone}, comment: {contact.comment}, date: {contact.date}, dateTime: {contact.dateTime}, archived: {contact.archived}')
    
    return HttpResponse(results)

def post_contact(request):
    return HttpResponse('create new contact')