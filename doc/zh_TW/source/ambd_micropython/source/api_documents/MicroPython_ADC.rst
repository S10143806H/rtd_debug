####
ADC
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **ADC(**\ *unit*\ [必填]\ **)**
| 以所給的組號來創建一個ADC對象，這樣就可以從所對應的引脚上讀取數值。

- ``unit``: 組號，每個組號對應一個引脚. 請查閱圖表來瞭解更多。

.. table:: 
   :align: center

   ==== ====
   Unit Pin
   ==== ====
   0    PB_4
   1    PB_5
   2    PB_6
   3    PB_7
   4    PB_1
   5    PB_2
   6    PB_3
   ==== ====


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **ADC.read()**
| 從引脚讀取數值並返還該數值