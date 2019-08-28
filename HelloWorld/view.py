
from django.shortcuts import render


def hello(request):
   context = {}
   context['hello'] = 'hello World!'
   return render(request,'hello.html',context)