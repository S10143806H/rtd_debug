.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] I2C - 發送與接收
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1
* Arduino UNO x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

I2C是一個微控制器上非常常見的模塊，它只需要兩根綫就可以實現最大3.4Mbps的傳輸速度。它使用主從模式，一個主機可以同時連接最多128個從機，因此經常用在微控制器與感應器之間的數據傳輸。

這裏我們使用ameba作爲主機來連接從機Arduino UNO，來驗證I2C的發送和接受。

在連接之前，請先將以下代碼上傳到Arduino UNO中 *“Examples -> Wire -> Slave_receiver”* 

接下來，請按以下所示來連接，此處我們選擇PA_26 作爲 SDA引脚，PA_25 作爲 SCL.

.. note::
   目前僅支持一組I2C在MicroPython上使用，引脚如下

.. table:: 
   :align: center

   ========= =========== ===========
   Unit      SDA         SCL
   ========= =========== ===========
   0         PA_26           PA_25
   ========= =========== ===========

|image1|

請一行接一行地複製粘貼以下代碼到REPL上，來觀察代碼效果。

.. code-block:: python
   :linenos:

   from machine import Pin, I2C
   i2c = I2C(scl = "PA_25", sda = "PA_26", freq=100000) # configure I2C with pins and freq. of 100KHz
   i2c.scan()
   i2c.writeto(8, 123) # send 1 byte to slave with address 8
   i2c.readfrom(8, 6) # receive 6 bytes from slave

.. |image1| image:: ../media/examples/imageI2C.jpg
   :width: 1540
   :height: 1051
   :scale: 50 %