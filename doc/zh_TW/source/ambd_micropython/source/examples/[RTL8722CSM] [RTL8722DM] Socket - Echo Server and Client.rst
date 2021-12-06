.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

########################################################
[RTL8722CSM] [RTL8722DM] Socket - Echo服務器與客戶端
########################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

WiFi連接完成後即可使用Socket來使用網路。 Socket就像一個假想的乙太網路介面，你可以用它把你的PC連接到互聯網上的服務器上，比如Google或Github。即使是像HTTP這樣的應用層協議也是建立在socket之上的。
一旦給定了IP地址和端口號，就可以自由地連接到遠程設備並與其進行通信。連接流程如下圖所示。

|image1|

下面是一個使用服務器socket和客戶端socket互相傳送消息的範例，要使用這個範例，您需要兩個ameba RTL8722來運行MicroPython，在REPL 的paste模式下分別將下面的代碼複製並粘貼到兩個ameba。

以下是 **服務器** 代碼 

.. code-block:: python
   :linenos:
   
   import socket
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiSSID", pswd = "YourWiFiPassword") # change the ssid and pswd to yours
   s = socket.SOCK()
   port = 5000
   s.bind(port) 
   s.listen()
   conn, addr = s.accept()
   while True:
     data = conn.recv(1024)
     conn.send(data+"from server")

以下是 **客戶端** 代碼 

.. code-block:: python
   :linenos:

   import socket
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiSSID", pswd = "YourWiFiPassword") # change the ssid and pswd to yours
   c = socket.SOCK()
   # make sure to check the server IP address and update in the next line of code
   c.connect("your server IP address", 5000) 
   c.send("hello world")
   data = c.recv(1024)
   print(data)


.. |image1| image:: ../media/examples/imageSocket.png
   :width: 330
   :height: 375
   :scale: 100 %