from django.shortcuts import render
from django.http import HttpResponse
from hotelMiranda.models import Rooms


# Create your views here.
def view_rooms(request):
    data = Rooms.objects.all()
    
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