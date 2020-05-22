
from django.shortcuts import render
from django.http import JsonResponse
from django.core.mail import send_mail
from django.shortcuts import render, HttpResponse, redirect
from MyModel.models import SqlmodelName
import os
import requests
import json
from HelloWorld.settings import PROJECT_ROOT


def ajax(request):  # 修改文件
    file_ = open(os.path.join(PROJECT_ROOT, 'runoob.txt'), "r+")
    # str = "test\n"
    # 在文件末尾写入一行
    file_.seek(0, 2)
    # line = file_.write(str)
    file_.close()
    return render(request, 'ajax.html')


def ajax_list(request):
    # Test.objects.filter(id=2).update(name='Facebook')
    # Test.objects.filter(id=5).delete()
    # print(AuthUser.objects.values('id') )
    data = SqlmodelName.objects.values('id', 'name')
    return JsonResponse(list(data), safe=False)


def post_ajax(request):
    username = request.POST.get('user', '')
    password = request.POST.get('pwd', '')
    info = {'username': username, 'password': password}
    return JsonResponse(info, safe=False)


def login(request):  # 登录接口
    data = SqlmodelName.objects.values()
    for x in data:
        x['id'] = x['id'] + 100

    str = "我叫 %s 今年 %d 岁!" % (data, 10)

    print(str)
    return JsonResponse(list(data), safe=False)


def send_email(request):
    state = send_mail('Subject here', 'Here is the message.', '874035968@qq.com',
                      ['lin_huazhen@kawasakijp.com'], fail_silently=False)
    print(state)
    return JsonResponse(state, safe=False)
