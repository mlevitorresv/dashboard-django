from django.shortcuts import render, redirect
from django.http import HttpResponse
from hotelMiranda.models import Rooms
from ..forms import booking_form
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
    
    if request.method == 'POST':
        form = booking_form(request.POST)
        if form.is_valid():
            booking = form.save(commit = False)
            booking.photo = 'https://castillotrans.eu/wp-content/uploads/2019/06/77461806-icono-de-usuario-hombre-hombre-avatar-avatar-pictograma-pictograma-vector-ilustraci%C3%B3n.jpg'
            booking.orderDate = datetime.datetime.now().date()
            booking.orderTime = datetime.datetime.now().time()
            booking.checkinTime = datetime.time(12,00)
            booking.checkoutTime = datetime.time(12,00)
            booking.status = 'booked'
            booking.roomId = data.id
            booking.save()
            print("Datos guardados exitosamente:", booking)  # Mensaje de registro para verificar si los datos se guardaron correctamente
            return redirect('rooms')
    else:
        form = booking_form()
        
    return render(request, 'roomDetails.html', {'room': result, 'form': booking_form})


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
    
    