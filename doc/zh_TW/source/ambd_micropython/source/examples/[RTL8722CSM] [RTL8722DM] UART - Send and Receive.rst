.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#################################################
[RTL8722CSM] [RTL8722DM] UART - 發送和接收
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1
* USB轉TTL串行模 x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

UART是一種非常通用的通信協議，是微控制器的一個重要組成部分。USB轉TTL串行傳輸模塊是一種可以將UART信號轉換為USB信號的集成電路，以便我們可以在PC上看到UART日誌。該模塊經常用於包括Ameba在內的許多開發板上。 但是，該模塊在Ameba上的功能被保留用於LOG UART和固件上傳，所以我們需要其他獨立模塊在Ameba和PC之間進行通信。

當前有2組UART引脚供MicroPython用戶使用，它們分別是

.. table:: 
   :align: center

   ========= =========== ===========
   Unit      tx          RX
   ========= =========== ===========
   0         PA_21       PA_22
   3         PA_26       PA_25
   ========= =========== ===========

| 在此示例中，我們使用第“0”組UART引脚來示範UART在Ameba上的工作方式。
| 如下圖所示，將USB轉TTL串行傳輸模塊連接到引脚 ``PA_21`` 和 ``PA_22``

|image1|

然後，將以下代碼逐行複制並粘貼到REPL中，以查看其效果。

.. code-block:: python
   :linenos:
   
   from machine import UART
   uart = UART(tx="PA_21", rx= "PA_22")
   uart.init()
   uart.write('hello')
   uart.read(5) # read up to 5 bytes


.. |image1| image:: ../media/examples/imageUART.jpg
   :width: 1029
   :height: 987
   :scale: 50 %