from django.shortcuts import render
from django.http import HttpResponse
from MyModel.models import AuthUser
import requests

def view(request):
    context = {}
    context['hello'] = 'hello thread'
    # data = AuthUser.objects.values()
    r = requests.get('http://rap2.taobao.org:38080/app/mock/250909/venue-set')
    print(r.text)
    return render(request, 'hello.html', context)
