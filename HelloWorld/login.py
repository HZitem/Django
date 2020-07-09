from django.http import HttpResponse
from django.core import serializers
# make_password是django自带的给password重新编码技术，存储在数据库中
from django.shortcuts import render_to_response
from django.contrib.auth.hashers import make_password, check_password
from MyModel.models import AuthUser
from django.http import JsonResponse

from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
import json


def user_login(request):
    username = request.POST.get('username', None)
    password = request.POST.get('password', None)
    if request.session.get('is_login', None):
        return JsonResponse({"msg": "已经是登录状态", "code": 104}, safe=False)
    else:
        if username and password:  # 确保用户名和密码都不为空
            try:
                user = AuthUser.objects.get(username=username)
            except:
                return JsonResponse({"msg": "帐号错误", "code": 101}, safe=False)
            if check_password(password, user.password):  # 校验密码
                request.session['is_login'] = True
                print("user",user)
                request.session['user_id'] = user.id
                userObj = authenticate(username=username, password=password)
                login(request, userObj)
                return JsonResponse({"msg": "登录成功", "code": 20000}, safe=False)
            else:
                return JsonResponse({"msg": "密码错误", "code": 103}, safe=False)

        return JsonResponse({"msg": "帐号密码不能为空", "code": 102}, safe=False)


def user_register(request):
    username = request.POST.get('username', '')
    password = request.POST.get('password', '')
    BeingUser = AuthUser.objects.filter(username=username).values()
    if BeingUser:
        return JsonResponse({"msg": "用户已存在", "code": 50000}, safe=False)
    else:
        user_profile = AuthUser()
        print("user_profile.password", password)
        user_profile.username = username
        user_profile.is_staff = 0
        user_profile.is_superuser = 1
        user_profile.password = make_password(password)#指定方法加密
        user_profile.is_active = 1  # 判断用户是否激活
        user_profile.save()
    return JsonResponse({"msg": "注册成功", "code": 20000}, safe=False)


def view(request):
    return render_to_response('login.html')


def search(request):
    request.encoding = 'utf-8'
    if 'q' in request.GET:
        message = '你搜索的内容为:' + request.GET['q']
    else:
        message = "你提交了空表单"
    return HttpResponse(message)


@login_required()
def profile(request):
    return HttpResponse("这是个人中心，只有登陆后才能看到！")
