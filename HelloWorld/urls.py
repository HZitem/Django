from django.urls import path
from . import websocket, login, ajax, thread,role,errorPage

urlpatterns = [
    # 页面
    path('', websocket.hello),
    path('index/', websocket.hello),
    path('thread/', thread.view),
    path('login/', login.view),
    path('websocket/', websocket.hello),
    path('ajax/', ajax.ajax),
    path('search/', login.search),
    path('profile/', login.profile, name='profile'),
    path('role/', role.view, name='view_role'),
    path('errorPage', errorPage.view, name='errorPage'),

    # 接口

    path('sharePage/', ajax.sharePage, name='ajax-sharePage'),
    path('register/', login.user_register, name='search-user_register'),
    path('ajax_list/', ajax.ajax_list, name='ajax-list'),
    path('test_requests/', ajax.test_requests, name='test_requests'),
    path('post_ajax/', ajax.post_ajax, name='post-ajax'),
    path('login_user/', login.user_login, name='user_login'),
    path('edit_file/', ajax.edit_file, name='edit_file'),
    path('send_email/', ajax.send_email, name='send_email'),
    path('permission_List', role.permission_List, name='permission_List'),
    path('permissions_List', role.permissions_List, name='permissions_List'),
    path('permissions_Add', role.permissions_Add, name='permissions_Add'),
    # 长连接
    path('test_websocket/', websocket.test_websocket, name='test_websocket'),
]
