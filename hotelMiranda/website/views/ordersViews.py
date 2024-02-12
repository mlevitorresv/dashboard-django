from django.shortcuts import render, redirect
from website.models import Order
from website.forms import orderForm





def view_orders(request):
    orders = Order.objects.all()
    return render(request, 'orders.html', {'orders': orders})

def view_order_id(request, order_id):
    order = Order.objects.get(id=order_id)
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
    order = Order.objects.filter(id = order_id).delete()
    return redirect('orders')

