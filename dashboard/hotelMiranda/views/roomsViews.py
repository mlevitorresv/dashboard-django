from django.shortcuts import render
from django.http import HttpResponse
from hotelMiranda.models import Rooms


# Create your views here.
def view_rooms(request):
    data = Rooms.objects.all()
    
    results = []
    for room in data:
        results.append(f'ID: {room.id}, Number: {room.number}, photo: {room.photo}, type: {room.type}, bed: {room.bed}, amenities: {room.amenities}, description: {room.description}, rate: {room.rate}, price: {room.price}, discount: {room.discount}, available: {room.available}')
    
    return HttpResponse(results)

def view_room_id(request, room_id):
    data = Rooms.objects.get(id=room_id)
    
    result = f'ID: {data.id}, Number: {data.number}, photo: {data.photo}, type: {data.type}, bed: {data.bed}, amenities: {data.amenities}, description: {data.description}, rate: {data.rate}, price: {data.price}, discount: {data.discount}, available: {data.available}'
    
    return HttpResponse(f'Room by id: {result}')