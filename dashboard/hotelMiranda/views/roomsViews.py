from django.shortcuts import render
from django.http import HttpResponse
from hotelMiranda.models import Rooms
import datetime


# Create your views here.
def view_rooms(request):
    arrival_date_str = request.GET.get('arrival_date')
    departure_date_str  = request.GET.get('departure_date')
    
    data = Rooms.objects.all()    
    
    if arrival_date_str and departure_date_str:
        try:
            data = Rooms.objects.filter(available=True) 
        except ValueError:
            print(f'Error: {ValueError}')
            pass
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
            'available': room.available
        })
        
    return render(request, 'rooms.html', {'rooms': results})

def view_room_id(request, room_id):
    data = Rooms.objects.get(id=room_id)
    
    result = {
        'id': data.id,
        'Number': data.number, 
        'photo': data.photo,
        'type': data.type,
        'bed': data.bed,
        'amenities': data.amenities,
        'description': data.description,
        'rate': data.rate,
        'price': data.price,
        'discount': data.discount,
        'available': data.available
    }
    
    return render(request, 'roomDetails.html', {'room': result})


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
    
    