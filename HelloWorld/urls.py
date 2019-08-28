from django.urls import path
from . import view,search,ajax

urlpatterns=[
    path('', view.hello),
    path('hello/', view.hello),
    path('search-form/', search.search_form),
    path('search/', search.search),
    path('ajax/', ajax.ajax),
    path('ajax_list/', ajax.ajax_list, name='ajax-list'),
    path('post_ajax/', ajax.post_ajax, name='post-ajax'),
]