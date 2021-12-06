####
SPI
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **SPI(**\ *unit_id*\ [必填], *baudrate*\ [選填], *polarity*\ [選填], *phase*\ [選填], *databits*\ [選填], *firstbit*\ [選填], *miso*\ [選填], *mosi*\ [選填], *sck*\ [選填], *mode*\ [選填]\ **)**
| 創建SPI對象並使用參數進行配置後，可以在SPI bus上讀寫數據。

- ``unit_id``: 表示SPI硬件的ID， 如果保留空白，則採用默認值
- ``baudrate``: SPI傳輸速度
- ``polarity``: 決定SPI工作模式的變量 (不推薦使用)
- ``phase``: 決定SPI工作模式的變量 (不推薦使用)
- ``databits``: 數據字節數量
- ``Firstbit``: 決定首字節是最高有效位 (MSB)或最低有效位 (LSB)
- ``miso```: miso 引腳 (不推薦使用)
- ``mosi``: mosi 引腳 (不推薦使用)
- ``sck``: clock 引腳 (不推薦使用)
- ``mode``: 決定MASTER 模式或是SLAVE 模式

.. note::  
   所有選填參數的初始值設定如下表所示:

.. table:: 
   :align: center

   ========= =============
   參數       默認值
   ========= =============
   Baudrate  2000000 Hz
   Polarity  Inactive_low
   Phase     Toggle_middle
   Databits  8
   Firstbit  MSB
   Miso      N.A.
   Mosi      N.A.
   Sck       N.A.
   Mode      MASTER
   ========= =============

目前Ameba D支援並提供2對SPI供使用:

.. table:: 
   :align: center

   ==== ===== ===== ===== =====
   unit MOSI  MISO  SCK   CS
   ==== ===== ===== ===== =====
   0    PB_18 PB_19 PB_20 PB_21
   1    PB_4  PB_5  PB_6  PB_7
   ==== ===== ===== ===== =====

.. note:: 
   上述所有SPI組號都支援主機模式(Master)，但是僅有 ``第 0 組`` 適用於從機模式.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **SPI.read()**
| 此方法將等待並返還從SPI緩存區讀取的數據，方法適用於主設備和從設備使用。

| **SPI.write(**\ *value*\ [必填]\ **)**
| 該方法將輸入一個整數數值，並寫入SPI bus，方法適用於主設備和從設備使用。

- **value**: 將寫入SPI bus的一個整數數值