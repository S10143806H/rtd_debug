.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##########################################
[RTL8722CSM] [RTL8722DM] WiFi - WiFi 掃描
##########################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

WiFi掃描功能可以幫助我們快速發現周圍有哪些WiFi網絡。 

該範例不需要任何其他硬件，因此只需複製以下代碼並將其粘貼到REPL中即可查看其作用。

.. code-block:: python  
   :linenos:
   
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.scan()