.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#####################################################
[RTL8722CSM] [RTL8722DM] SPI - 作爲從設備接收消息
#####################################################

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

SPI是一種快速且强大的通訊協議，並通常在微處理器中被用來接受傳感器的數據或輸出圖像訊號。 
在這個示例中將示範ameba如何透過MicroPython以從屬模式接收數據。

在通訊連接建立之前，需要先將以下代碼燒錄到Arduino UNO。

.. code-block:: c
   :linenos:

   ///////////////////////
   // SPI Master Write //
   ///////////////////////
   #include <SPI.h>
   void setup (void) {
   		Serial.begin(115200); //set baud rate to 115200 for usart
   		digitalWrite(SS, HIGH); // disable Slave Select
   		SPI.begin ();
   }
   void loop (void) {
   		char c;
   		digitalWrite(SS, LOW); // enable Slave Select
   		// send test string
   		for (const char * p = "Hello, world!\r" ; c = *p; p++) {
      		SPI.transfer(c);
      		Serial.print(c);
   			}
  		   Serial.println();
   		digitalWrite(SS, HIGH); // disable Slave Select
   		delay(2000);
   }

Arduino UNO將以如下圖所示的連接方式和Ameba連接，我們使用第“0”組SPI作爲從機， 並將Arduino UNO當作SPI的主機。

|image1|

然後複製以下代碼並粘貼到REPL的粘貼模式窗口，並等待代碼生效。

.. code-block:: python
   :linenos:
   
   from machine import SPI
   s1= SPI(0 , mode = SPI.SLAVE)
   for i in range(14):
   chr(s1.read())


.. |image1| image:: ../media/examples/imageSPI.jpg
   :width: 1282
   :height: 901
   :scale: 50 %