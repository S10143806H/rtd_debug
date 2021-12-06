####
UART
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **UART(**\ *unit*\ [選填]\ *, baudrate*\ [選填]\ *, databits*\ [選填]\ *, stopbit*\ [選填]\ *, paritybit*\ [選填]\ *, timeout*\ [選填]\ *, tx_pin*\ [required]\ *, rx_pin*\ [required]\ **)**
| 創建一個與給定的TX和RX引腳相關聯的UART對象，並通過使用其他相關參數進行配置后，便可以在引腳上做讀寫。

-  ``unit``: 代表可使用UART引脚組的ID，可輸入0或3
-  ``baudrate``:  在Ameba上使用115200
-  ``databits``: 數據字節的數量，通常爲7到8個字節
-  ``stopbits``: 停止位的字節數量，通常爲1字節，1.5字節或2 字節
-  ``paritybit``: 用於奇偶校驗，數值通常為none（無），odd（奇）或even(偶）
-  ``timeout``: 計算UART在超時（timeout）之前等待的時間 （以毫秒為單位）
-  ``tx_pin``: 發送端引脚，通常與接受器的RX引脚連接
-  ``rx_pin``: 接收端引脚，通常與發送器的TX引脚連接

.. note::  
   並非所有參數都是必需的，因此如果不填，MicroPython將採用其默認值，下表為所有選填參數的默認值

.. table:: 
   :align: center

   ========= =============
   參數       默認值
   ========= =============
   Unit      0
   Baudrate  115200
   Databits  8
   Stopbits  1
   Paritybit 0
   Timeout   10 (ms)
   ========= =============


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **UART.init()**
| 使用此方法初始化UART配置

| **UART.read(**\ *length*\ [選填]\ **)**
| 此方法用於從UART緩存中讀取數據

-  **length**: 接收數據的長度

| **UART.readline()**
| 此方法功能類似於read()但每次會讀出一行內容

| **UART.write(**\ *buffer*\ [必填]\ **)**
| 該方法將字節緩衝區發送到總線，並返回寫入的字節數。

- **buffer**: 字節緩存區，可以存放的數據類型有字符串類型，整型等其他類型。

| **UART.irq_enable(**\ *bool*\ [選填]\ **)**
| 此方法有兩種使用方式:

1. 當沒有傳入任何參數，該方法檢查UART中斷請求(IRQ)的狀態，如果啟用了IRQ，它將返回True；如果禁用IRQ，則返回False
2. 通過傳入True/False來啓用/禁用UART IRQ處理程序

| **UART.irq_handler(**\ *function*\ [required]\ **)**
| 將Python處理函數傳遞給UART 中斷請求，以便在發生UART事件時將其觸發。

- **function**: 在Python中定義的函數或lambda函數