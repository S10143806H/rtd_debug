####################################
[RTL8722DM_MINI] SDFS 資料編輯
####################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba RTL8722DM_MINI x 1
* MicroSD卡 x 1 (SD卡必須 < 32GB，格式設置為 fatfs)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

SD文件系統模塊支持SD卡數據操作。可以隨時控制和查看文件，並將它們保存在非揮發性記憶體中。

將以下代碼逐行複制粘貼到REPL中來使用。

.. code-block:: python
   :linenos:

   from machine import SDFS
   s=SDFS()                # create a short form
   s.create("ameba.txt")   # create a file named "ameba.txt"
   s.write("ameba.txt", "ameba supports sd card file system!") # write a string to the file just created
   s.read("ameba.txt")     # read the content from the same file
   s.rm("ameba.txt")       # delete the file

.. note::
    不需要打開或關閉文件，API 會自動為您完成。