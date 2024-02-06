from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def view_rooms(request):
    return HttpResponse('All rooms')

def view_room_id(request, room_id):
    return HttpResponse(f'Room by id: {room_id}')