from django import forms
from hotelMiranda.models import Contact


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