
from django.shortcuts import render
from dwebsocket.decorators import accept_websocket
import time
import json

"长链接相关的简版功能"
@accept_websocket
def test_websocket(request):
    if request.is_websocket():
        message = request.websocket.wait()
        print(message)
        while 1:
            time.sleep(2)  # 向前端发送时间
            dit = {
                'time': time.strftime('%Y.%m.%d %H:%M:%S ', time.localtime(time.time()))
            }
            request.websocket.send(json.dumps(dit))


def hello(request):
    context = {}
    context['hello'] = 'hello World!'
    return render(request, 'hello.html', context)
