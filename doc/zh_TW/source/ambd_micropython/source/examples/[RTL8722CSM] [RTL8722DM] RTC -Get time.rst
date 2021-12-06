.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] RTC -時間顯示
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**材料準備**
:raw-html:`</p>`

* Ameba x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**範例說明**
:raw-html:`</p>`

RTC 模組會幫助微控制器來追蹤時間，是時間模組必須的一部分。 我們在這裏有一個示例，來展示如何來得到本地時間和上傳時間。

複製下面的代碼貼至REPL，觀察結果。

.. code-block:: python
   :linenos:
   
   rtc = RTC()
   rtc.datetime() # get date and time 
   rtc.datetime((2020, 12, 31, 4, 23, 58, 59, 0)) # set a specific date and time (year, month, day, weekday(0 for Monday), hour, minute, second, total seconds)
   rtc.datetime() # check the updated date and time