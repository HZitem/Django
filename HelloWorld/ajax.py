
from django.shortcuts import render
from django.http import JsonResponse
from SqlModel.models import Test

def ajax(request):
   # test1 = Test(name='runoob')
   # test1.save()
   return render(request,'ajax.html')

def ajax_list(request):
   # Test.objects.filter(id=2).update(name='Facebook')
   # Test.objects.filter(id=5).delete()
   data = Test.objects.values('id', 'name')
   return JsonResponse(list(data), safe=False)

def post_ajax(request):
   username=request.POST.get('user','')
   password=request.POST.get('pwd','')
   info = {'username': username, 'password': password}
   return JsonResponse(info,safe=False)


  
