
from django.shortcuts import render
from django.http import JsonResponse
from SqlModel.models import Name
from django.core.mail import send_mail
import os 
from HelloWorld.settings import PROJECT_ROOT 
def ajax(request):
   file_ = open(os.path.join(PROJECT_ROOT,'runoob.txt'), "r+")
   str = "test\n"
# 在文件末尾写入一行
   file_.seek(0, 2)
   line = file_.write( str )
   file_.close()
   return render(request, 'ajax.html')


def ajax_list(request):
    # Test.objects.filter(id=2).update(name='Facebook')
    # Test.objects.filter(id=5).delete()
    data = Name.objects.values('id', 'name')
    return JsonResponse(list(data), safe=False)


def post_ajax(request):
    username = request.POST.get('user', '')
    password = request.POST.get('pwd', '')
    info = {'username': username, 'password': password}
    return JsonResponse(info, safe=False)


def send_email(request):
    state = send_mail('Subject here', 'Here is the message.', '874035968@qq.com',
                      ['lin_huazhen@kawasakijp.com'], fail_silently=False)
    print(state)
    return JsonResponse(state, safe=False)


