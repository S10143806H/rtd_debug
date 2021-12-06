.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] PWM - LED 漸變
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1 
* LED x 1
* 電阻(220歐姆) x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

PWM脈寬調變控制輸出脈波週期來實現對LED亮度和馬達的控制。 下面是我們用LED來展示PWM是如何來實做的。

連接PA_26至LED的正極和電阻串聯在一起, 然後GND接至LED負極。如圖所示

|image1|

然後, 逐行複製下面的代碼去REPL並觀察結果, LED會慢慢的漸變明亮。

.. code-block:: python   
   :linenos:
   
   from machine import Pin, PWM
   import time
   p = PWM(pin = "PA_26")
   # 0 duty cycle thus output 0
   p.write(0.0)
   # 10% duty cycle
   p.write(0.1)
   # 50% duty cycle
   p.write(0.5)
   # 100% duty cycle
   p.write(1.0)

.. |image1| image:: ../media/examples/imagePWM.jpg
   :width: 1251
   :height: 804
   :scale: 50 %