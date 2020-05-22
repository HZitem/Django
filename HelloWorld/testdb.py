from django.shortcuts import render
from django.http import HttpResponse
from MyModel.models import AuthUser
def view(request):
    context = {}
    context['hello'] = 'hello thread'
    data = AuthUser.objects.values()
    print (data)
    return render(request, 'hello.html', context)

