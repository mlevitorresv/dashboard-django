from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def view_contacts(request):
    return HttpResponse('All contacts')

def post_contact(request):
    return HttpResponse('create new contact')