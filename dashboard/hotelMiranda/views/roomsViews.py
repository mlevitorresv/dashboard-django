from django.shortcuts import render, redirect
from django.http import HttpResponse
from hotelMiranda.models import Rooms
from ..forms import bookingForm
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
    data = Rooms.objects.filter(discount__gt = 0)
    
    results = []
    for room in data:
        results.append({
            'id': room.id,
            'number': room.number,
            'photo': room.photo,
            'type': room.type,
            'bed': room.bed,
            'amenities': room.amenities,
            'description': room.description,
            'rate': room.rate,
            'price': room.price,
            'discount': room.discount,
            'final_price': room.price - (room.price * (room.discount/100)),
            'available': room.available
        })
        
    return render(request, 'offers.html', {'rooms': results})
    
    