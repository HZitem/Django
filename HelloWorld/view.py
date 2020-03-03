
from django.shortcuts import render
import _thread
import time



def hello(request):
   context = {}
   context['hello'] = 'hello World!'
   return render(request,'hello.html',context)