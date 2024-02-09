from django.shortcuts import render, redirect
from django.urls import reverse
from ..forms import indexAvailableForm

def index(request):
    if request.method == 'GET':
        form = indexAvailableForm(request.GET)
    else:
        form = indexAvailableForm()

    return render(request, 'index.html', {'form': form})