from django.shortcuts import render, redirect
from website.models import Order
from website.forms import orderForm, orderEditForm





def view_orders(request):
    orders = Order.objects.filter(user = request.user)
    return render(request, 'orders.html', {'orders': orders})

def view_order_id(request, order_id):
    order = Order.objects.get(id=order_id, user = request.user)
    return render(request, 'orderDetails.html', {'order': order})

def post_order(request):
    if request.method == 'POST':
        form = orderForm(request.POST)
        if form.is_valid:
            order = form.save(commit=False)
            order.user = request.user
            order.save()
            return redirect('orders')
    else:
        form = orderForm()
    return render(request, 'new-order.html', {'form': form})

def delete_order(request, order_id):
    order = Order.objects.filter(id = order_id, user = request.user).delete()
    return render(request, 'deleteOrder.html')

def update_order(request, order_id):
    order = Order.objects.get(id = order_id, user = request.user)
    if request.method == 'POST':
        form = orderEditForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('orders') 
    else:
        form = orderEditForm(instance=order)
    return render(request, 'edit-order.html', {'form': form, 'order': order})
    