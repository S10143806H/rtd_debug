.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] GPIO - 閃爍LED
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1 
* LED x 1
* 電阻(220歐姆)  x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

閃爍LED是開始瞭解並使用MicroPython最好示例。

首先，如下圖所示將PB_22引脚連接到與限流電阻串聯的LED的陽極引脚，再將GND連接到LED的陰極引脚：

|image1|

| 然後，複製以下代碼並在 ``REPL`` 界面中按 ``Ctrl + E`` 進入 ``REPL`` 的粘貼模式（有關 ``REPL`` 和粘貼模式的更多信息，請前往“:doc:`../getting_started/getting_started`”頁面）。如果使用 ``Tera Term``，只需右鍵單擊終端的任何空白處即可將代碼粘貼到 ``REPL``，然後按 ``Ctrl + D`` 執行代碼。
| 如果一切正常，就可以看到LED在3秒鐘內閃爍3次。

.. code-block:: python
   :linenos:
   
   from machine import Pin
   a = Pin("PB_22", Pin.OUT)
   a.value(1)
   time.sleep_ms(500)
   a.value(0)
   time.sleep_ms(500)
   a.on()
   time.sleep_ms(500)
   a.off()
   time.sleep_ms(500)
   a.toggle()
   time.sleep_ms(500)
   a.toggle()


.. |image1| image:: ../media/examples/imageBlink.png
   :width: 724
   :height: 654
   :scale: 50 %