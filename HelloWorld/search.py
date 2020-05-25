from django.http import HttpResponse
from django.core import serializers
from django.shortcuts import render_to_response #make_password是django自带的给password重新编码技术，存储在数据库中
from django.contrib.auth.hashers import make_password
from MyModel.models import AuthUser
from django.http import JsonResponse
import json

def user_register(request):
    email = request.POST.get('email', '')
    password = request.POST.get('passwd', '')

    # IS_user = serializers.serialize("json",AuthUser.objects.filter(email=email))  #对象转字符串
    BeingUser = AuthUser.objects.filter(email=email).values()
    if BeingUser:
        return JsonResponse({"errorMsg": "用户已存在","code":50000}, safe=False)
    else:
        print('error')
        user_profile = AuthUser()
        user_profile.email = email
        user_profile.is_staff = 0
        user_profile.is_superuser = 1
        user_profile.password = make_password(password) 
        user_profile.is_active = 0 #判断用户是否激活
        user_profile.save()
    return JsonResponse({"msg":"注册成功","code":20000}, safe=False)

    
def search_form(request):
    return render_to_response('search_form.html')


def search(request):
    request.encoding = 'utf-8'
    if 'q' in request.GET:
        message = '你搜索的内容为:' + request.GET['q']
    else:
        message = "你提交了空表单"
    return HttpResponse(message)
