from django.shortcuts import render, redirect
from django.urls import reverse
from website.forms import indexAvailableForm

def index(request):
    if request.method == 'GET':
        form = indexAvailableForm(request.GET)
    
    return render(request, 'index.html', {'form': form})