.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] ADC - 讀取電位器數值
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1 
* 電位器 x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

這裏我們把ameba連接到一個電位器上來讀取它的數值，連接方式如下:

|image1|

複製粘貼以下代碼到REPL上

.. code-block:: python
   :linenos:

   import socket
   a = ADC(0)
   a.read()

.. |image1| image:: ../media/examples/imageADC.jpg
   :width: 1320
   :height: 987
   :scale: 50 %