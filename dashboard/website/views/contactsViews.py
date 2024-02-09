from django.shortcuts import render, redirect
from django.http import HttpResponse
from website.models import Contact
from website.forms import contactForm
import datetime


# Create your views here.
def post_contact(request):
    if request.method == 'POST':
        form = contactForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('contact')
    else:
        form = contactForm()
        
    return render(request, 'contact.html', {'form': form})