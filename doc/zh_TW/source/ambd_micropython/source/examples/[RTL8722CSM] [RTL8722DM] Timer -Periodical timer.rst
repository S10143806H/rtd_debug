.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] Timer -週期性定時器
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

* Ameba x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Steps**
:raw-html:`</p>`

這裏有3個定時器可以使用, 全部是32kHz, 分別是定時器1/2/3。
我們使用定時器1來示範一個週期性定時器是怎樣工作的。

複製下面最初的3行代碼至REPL來查看結果。

.. code-block:: python
   :linenos:
   
   from machine import Timer
   t = Timer(1) # Use Timer 1/2/3 only
   t.start(2000000, t.PERIODICAL) # Set GTimer fired periodically at duration of 2 seconds, printing text on the terminal
   # To stop the periodical timer, type
   t.stop()

| A text of  ``–timer triggered. to stop: type t.stop()–`` will be printed on the terminal every 2 seconds.
| To stop the timer, simply type ``t.stop()``.