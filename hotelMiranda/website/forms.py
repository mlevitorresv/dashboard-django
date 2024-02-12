from django import forms
from website.models import Contact, Booking, Order


class contactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['photo', 'name', 'phone', 'email', 'comment']
        widgets = {
            'photo': forms.TextInput(attrs={'class': 'main__contact--data--element', 'placeholder': 'Link of photo'}),
            'name': forms.TextInput(attrs={'class': 'main__contact--data--element', 'placeholder': 'Your full name'}),
            'phone': forms.TextInput(attrs={'class': 'main__contact--data--element', 'placeholder': 'Add phone number'}),
            'email': forms.TextInput(attrs={'class': 'main__contact--data--element', 'placeholder': 'Add email'}),
            'comment': forms.Textarea(attrs={'class': 'main__contact--data--element--textarea', 'cols': 30, 'rows': 10, 'placeholder': 'Your comment about us'})
        }
        
        
class indexAvailableForm(forms.Form):
    arrival_date = forms.DateField(widget=forms.DateInput(attrs={'class': 'main__availability--form--data--input', 'name': 'arrivalDate', 'id': 'arrivalDate'}))
    departure_date = forms.DateField(widget=forms.DateInput(attrs={'class': 'main__availability--form--data--input', 'name': 'departureDate', 'id': 'departureDate'}))
    
    
class bookingForm(forms.ModelForm):
    class Meta:
        model = Booking
        fields = ['checkinDate', 'checkoutDate', 'name', 'email', 'phone', 'notes']
        widgets = {
            'checkinDate': forms.DateInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'arrivalDate', 'id': 'arrivalDate'}),
            'checkoutDate': forms.DateInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'leDepartureDate', 'id': 'leDepartureDate'}),
            'name': forms.TextInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'fullName', 'id': 'fullName'}),
            'email': forms.TextInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'email', 'id': 'email'}),
            'phone': forms.TextInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'phone', 'id': 'phone'}),
            'notes': forms.TextInput(attrs={'class': 'main__details--room--availability--form--input', 'name': 'message', 'id': 'message'}),
        }
        
        
class orderForm(forms.ModelForm):
    class Meta:
        model = Order
        fields = ['type', 'description', 'room']
        widgets = {
            'type': forms.Select(attrs={'class': 'main__contact--data--element', 'name': 'type', 'id': 'type'}),
            'description': forms.Textarea(attrs={'class': 'main__contact--data--element--textarea', 'name': 'description', 'id': 'description', 'cols': 30, 'rows': 10, 'placeholder': 'notes for your order'}),
            'room': forms.Select(attrs={'class': 'main__contact--data--element', 'name': 'room', 'id': 'room'}),
        }
        