from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import render, HttpResponse,HttpResponseRedirect,redirect
from MyModel.models import AuthUser,SqlmodelRole

class Test(MiddlewareMixin):
    def process_view(self,request, view_func, view_args, view_kwargs):
        if(request.session.get('is_login')):
            # user_id = request.session.get('user_id')
            # role = AuthUser.objects.get(id=user_id).role
            # permission_id = SqlmodelRole.objects.get(id=role).permission_id
            # print("permission_id",permission_id)
            print("good")
            if(request.path == "/errorPage123"):
                context = {}
                context['error'] = '403  没有权限！'
                return render(request, 'errorPage.html', context)
                
    # def process_request (self, request):
    #     print (request.session)
       