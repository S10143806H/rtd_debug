####
RTC
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **RTC()**
| 創建一個RTC對象


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **RTC.datetime(**\ *array_8*\ [optional]\ **)**
| 以下是該方法的兩種使用方法

-  | 如果沒有輸入任何參數，會返還本地時間。 
   | 格式如下:
   | (年, 月, 日, 時, 分, 秒, 周[0-6表示週一到週日]，年[1-366])。
-  如果是輸入一個8位數組的參數，會更新本地時間。格式和上面一致。