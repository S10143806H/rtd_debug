############################################
[RTL8722DM_MINI] SDFS - 目錄操作
############################################

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

MicroPython RTL8722 通過從 machine 導入 SDFS 模塊來支持 SD 文件系統。 該模塊是一個簡化的文件系統，主要著重於 SD 卡操作，因此它不支持虛擬文件系統。

將以下代碼逐行複制粘貼到REPL中來使用。

.. code-block:: python
    :linenos:
    
    from machine import SDFS
    s=SDFS()          # create an instance and mount on file system on SD card
    s.listdir()       # listing the files and folders under current path
    s.mkdir("test")   # create a folder named "test" under current path
    s.chdir("test")   # change directory to test folder
    s.pwd()           # print out present working directory(current path)
    s.chdir("/")      # change directory bach to root directory
    s.rm("test")      # delete the test folder

.. note::
    不需要打開或關閉文件，API 會自動為您完成。