import websocket
import _thread
import time


def on_message(ws, message):
    print('Received: ' + message)


def on_open(ws):
    def gao():
        for i in range(5):
            time.sleep(0.01)
            msg = '{0}'.format(i)
            ws.send(msg)
            print('Sent: ' + msg)
        time.sleep(1)

        ws.close()
        print('websocket closed')

    _thread.start_new_thread(gao, ())


if __name__ == "__main__":
    ws = websocket.WebSocketApp(
        "ws://echo.websocket.org/",
        on_message = on_message,
        on_open = on_open
    )

    ws.run_forever()