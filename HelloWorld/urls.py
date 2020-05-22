from django.urls import path
from . import websocket, search, ajax, thread, testdb

urlpatterns = [
    path('', websocket.hello),
    path('websocket/', websocket.hello),
    path('thread/', thread.view),
    path('testdb/', testdb.view),
    path('search-form/', search.search_form),
    path('search/', search.search),
    path('ajax/', ajax.ajax),
    path('ajax_list/', ajax.ajax_list, name='ajax-list'),
    path('post_ajax/', ajax.post_ajax, name='post-ajax'),
    path('login/', ajax.login, name='login'),
    path('send_email/', ajax.send_email, name='send_email'),
    # 长连接
    path('test_websocket/', websocket.test_websocket, name='test_websocket'),
]
