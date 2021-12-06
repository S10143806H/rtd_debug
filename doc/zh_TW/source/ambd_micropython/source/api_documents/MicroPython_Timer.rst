#####
Timer
#####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **Timer(**\ *unit*\ [選填]\ **)**
| 用特定ID創建一個定時器對象

- ``unit``: 可以是 1 / 2 / 3， 對應定時器 1 / 2 / 3


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **Timer.start(**\ *microseconds*\ [必填], *type*\ [必填]\ **)**
| 此方法將在給定的微秒時間內啟動給定類型的定時器， 無論是單次還是周期性的。

- **microseconds**: 微秒數間隔，必須是整數。
- **type**: 單次，或週期性定時器。

| **Timer.deinit()**
| 此方法將解除創建的定時器對象並停止定時器。

| **Timer.stop()**
| 此方法將停止定時器時鐘和其中斷handler。

| **Timer.us ()**
| 此方法將返還定時器的當前微秒(us)。

| **Timer.tick ()**
| 此方法將返還定時器的當前ticks (0~32768)。

| **Timer.reload (**\ *duration_us*\ [必填]\ **)**
| 此方法將用時間長度(us)來重新設定定時器。

- **duration_us**: 時間長度，計量單位是微秒us。