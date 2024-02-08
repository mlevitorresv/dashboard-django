from django.shortcuts import render, redirect
from django.urls import reverse
from ..forms import index_available_form

def index(request):
    if request.method == 'GET':
        form = index_available_form(request.GET)
    else:
        form = index_available_form()

    return render(request, 'index.html', {'form': form})