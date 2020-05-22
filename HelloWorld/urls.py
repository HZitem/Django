from django.urls import path
from . import websocket, search, ajax, thread

urlpatterns = [
    # 页面
    path('', websocket.hello),
    path('thread/', thread.view),
    path('search-form/', search.search_form),
    path('websocket/', websocket.hello),
    path('ajax/', ajax.ajax),
    path('search/', search.search),
    # 接口

    path('sharePage/', ajax.sharePage, name='ajax-sharePage'),
    path('ajax_list/', ajax.ajax_list, name='ajax-list'),
    path('test_requests/', ajax.test_requests, name='test_requests'),
    path('post_ajax/', ajax.post_ajax, name='post-ajax'),
    path('login/', ajax.login, name='login'),
    path('edit_file/', ajax.edit_file, name='edit_file'),
    path('send_email/', ajax.send_email, name='send_email'),
    # 长连接
    path('test_websocket/', websocket.test_websocket, name='test_websocket'),
]
