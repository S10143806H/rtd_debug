####
Time
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

N.A.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **time.sleep(**\ *seconds*\ [必填]\ **)**
| 此方法將會用既定的時間，延遲正在工作的微控制器。

- **seconds**: 秒數，必須是整數

| **time.sleep_ms(**\ *milliseconds*\ [必填]\ **)**
| 此方法將會用既定的時間，延遲正在工作的微控制器。

-  **milliseconds**: 毫秒數，必須是整數

| **time.sleep_us(**\ *microseconds*\ [必填]\ **)**
| 此方法將會用既定的時間，延遲正在工作的微控制器。

-  **microseconds**: 微秒數，必須是整數

| **time.time()**
| 此方法將會返還一個秒數，此秒數是從(1970-01-01) 開始計算。

| **time.localtime()**
| 此方法將會返還RTC的本地時間。
| (年, 月, 日, 時, 分, 秒, 周[0-6] 週一到週日, 年[1-366])。

| **time.mktime(**\ *tuple*\ [必填]\ **)**
| 此方法的功能相反於 ``time.localtime()``。它的參數是一個按照 ``time.localtime()`` 來表達的完整8項元組。它會返還一個整數，此整數是從2000年一月一日到現在的秒數。

-  **tuple**: 一個來表達的完整8項元組

| **time.ticks_ms()**
| 此方法將會返還一個遞增的毫秒數，參考點可以昰任意時間。通常和 ``ticks_add()``, ``ticks_diff()`` 一起使用。

| **time.ticks_add(**\ *starting_ticks*\ [必填], *ticks_added*\ [必填]\ **)**
| 此方法將會增加ticks到 ``starting_ticks`` 上。

-  **starting_ticks**: 從 ``ticks_ms()`` 拿到的毫秒數時間
-  **ticks_added**: 要增加的ticks

| **time.ticks_diff(**\ *end_ticks*\ [必填], starting\_\ *ticks*\ [必填]\ **)**
| 此方法將會返還 ``end_ticks`` 時間和 ``starting_ticks`` 時間的差值。

-  **end_ticks**: 從 ``ticks_ms()`` 拿到的毫秒數時間
-  **starting_ticks**: 從 ``ticks_ms()`` 拿到的毫秒數時間