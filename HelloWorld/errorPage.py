from django.shortcuts import render

def view(request):
    context = {}
    context['error'] = '404'
    # print(dict)
    return render(request, 'errorPage.html', context)
    # return render(request, '/errorPage', context)