
from django.shortcuts import render
from django.http import JsonResponse
from django.core.mail import send_mail
from django.shortcuts import render, HttpResponse, redirect
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage, InvalidPage
from MyModel.models import SqlmodelName,SqlmodelPermission
import os
import requests
import json
from HelloWorld.settings import PROJECT_ROOT


def ajax(request): 
    return render(request, 'ajax.html')

def edit_file(request): # 修改文件
    file_ = open(os.path.join(PROJECT_ROOT, 'runoob.txt'), "r+")
    str =  request.POST.get('text', '')
    # 在文件末尾写入一行
    file_.seek(0, 2)
    line = file_.write(str)
    file_.close()
    return JsonResponse(1, safe=False)

def ajax_list(request):
    # Test.objects.filter(id=2).update(name='Facebook')
    # Test.objects.filter(id=5).delete()
    data = SqlmodelName.objects.values('id', 'name')
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

def test_requests(request):
    data = requests.get('http://rap2.taobao.org:38080/app/mock/250909/testList')
    print (data.json())
    return JsonResponse(data.json(), safe=False)

def sharePage(request):
    data = SqlmodelPermission.objects.values()
    # r = requests.get('http://rap2.taobao.org:38080/app/mock/250909/venue-set')
    book_list = data
    paginator = Paginator(book_list, 10)
    if request.method == "GET":
        # 获取 url 后面的 page 参数的值, 首页不显示 page 参数, 默认值是 1
        page = request.GET.get('page')
        try:
            books = paginator.page(page)
        # todo: 注意捕获异常
        except PageNotAnInteger:
            # 如果请求的页数不是整数, 返回第一页。
            books = paginator.page(1)
        except InvalidPage:
            # 如果请求的页数不存在, 重定向页面
            return HttpResponse('找不到页面的内容')
        except EmptyPage:
            # 如果请求的页数不在合法的页数范围内，返回结果的最后一页。
            books = paginator.page(paginator.num_pages)
    return JsonResponse(list(books), safe=False)