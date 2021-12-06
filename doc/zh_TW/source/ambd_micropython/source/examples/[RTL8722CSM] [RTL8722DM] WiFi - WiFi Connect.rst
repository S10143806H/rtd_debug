.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

############################################
[RTL8722CSM] [RTL8722DM] WiFi - WiFi 連接
############################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

Ameba可以使用開放安全性或WPA2安全類型連接到WiFi接入點，WPA2安全類型是家用無線路由器中最常用的安全類型。 

在這裡我們將使用下面的代碼連接到WiFi接入點，將以下代碼逐行複制並粘貼到REPL中，以查看其作用。

.. code-block:: python
   :linenos:
   
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiName", pswd = "YourWiFiPassword")