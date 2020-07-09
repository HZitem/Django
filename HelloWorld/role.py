from django.shortcuts import render
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from MyModel.models import SqlmodelPermission,SqlmodelRole

@login_required
def view(request):
    context = {}
    context['hello'] = 'hello thread'
    return render(request, 'role.html', context)

def permission_List(request):
    data = SqlmodelPermission.objects.values()
    return JsonResponse(list(data), safe=False)

def permissions_Add(request):
    name = request.POST.get('name', '')
    permission_id = request.POST.get('permission_id', '')
    print('name',name,"permission_id",permission_id)
    Permissions = SqlmodelRole()
    Permissions.name = name
    Permissions.permission_id = permission_id
    Permissions.save()
    return JsonResponse({"msg": "添加成功", "code": 20000}, safe=False)


def permissions_List(request):
    data = SqlmodelRole.objects.values()
    return JsonResponse(list(data), safe=False)