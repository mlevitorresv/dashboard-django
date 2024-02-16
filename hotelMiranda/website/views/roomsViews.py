from django.shortcuts import render, redirect
from django.http import HttpResponse
from website.models import Rooms
from website.forms import bookingForm
import datetime


# Create your views here.
def view_rooms(request):
    arrival_date_str = request.GET.get('arrival_date')
    departure_date_str  = request.GET.get('departure_date')
    
    rooms = Rooms.objects.all()    
    
    if arrival_date_str and departure_date_str:
        try:
            rooms = Rooms.objects.filter(available=True) 
        except ValueError:
            print(f'Error: {ValueError}')
            pass
        
    return render(request, 'rooms.html', {'rooms': rooms})

def view_room_id(request, room_id):
    room = Rooms.objects.get(id=room_id)
    
    if request.method == 'POST':
        form = bookingForm(request.POST)
        if form.is_valid():
            booking = form.save(commit = False)
            booking.roomId = room.id
            booking.save()
            return redirect('rooms')
    else:
        form = bookingForm()
        
    return render(request, 'roomDetails.html', {'room': room, 'form': bookingForm})


def view_rooms_offers(request):
    rooms = Rooms.objects.filter(discount__gt = 0)        
    return render(request, 'offers.html', {'rooms': rooms})
    
    