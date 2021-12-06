####
I2C
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **I2C(** \ *unit_id*\  [選填], \ *"sda_pin"*\  [必填], \ *"scl_pin"*\  [必填], *frequency*\  [選填]\ **)**
| 創建一個I2C對象並關聯其到所給的引脚上，使用別的參數來配置該對象。
| 如此便可在I2C上發送以及接收數據。

- ``unit_id``  : 硬件I2C的組號, 如不填則使用默認值
- ``"sda_pin"``: SDA引脚名
- ``"scl_pin"``: SCL引脚名
- ``frequency``: I2C 的運行頻率, 如不填則使用默認值

.. note::
   所有選填參數的默認值如下

.. table:: 
   :align: center

   ========= ===========
   參數       默認值
   ========= ===========
   Unit_id   0
   Frequency 100000 (Hz)
   ========= ===========
  

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`
   
| **I2C.reset()**
| 該方法取消I2C 設備的初始化.

| **I2C.scan()**
| 該方法掃描並返回可用I2C地址.

| **I2C.readinto(** *buf*\ [必填], *flag*\ [選填]\ **)**
| 該方法讀取I2C緩存器中的數據並存入用戶定義的緩存器中

- **buf**: 一個string / array /byte array 類型的緩存器
- **flag**: 一個布爾標記, 如果是True則在數據末尾發送 NACK, 反則反之

| **I2C.write(**\ *buf*\ [必填]\ **)**
| 該方法發送已存在buf中的數據

- **buf:** 一個string / array /byte array 類型的緩存器

| **I2C.readfrom(**\ *addr*\ [必填], *len*\ [必填], *stop*\ [選填]\ **)**
| 該方法從所給的地址上讀取len長度的數據。如果stop值爲真，則在傳輸結尾發送STOP字節。

- **addr**: 讀取的地址
- **len**: 要讀取的數據長度
- **stop**: 布爾標記，若True則在傳輸結束發送STOP字節

| **I2C.readfrom_into(**\ *addr*\ [必填], *buf*\ [必填], *stop*\ [選填]\ **)**
| This method reads data from given address into the user-declared buffer provided, if stop is True, then send a STOP bit at the end of the transmission.

- **addr**: 讀取的地址
- **buf**: 一個string / array /byte array 類型的緩存器
- **stop**: 布爾標記，若True則在傳輸結束發送STOP字節

| **I2C.writeto(**\ *addr*\ [必填], *value*\ [必填], *stop*\ [選填]\ **)**
| 該方法發送一個整數數據到所給的地址上。如果stop值爲真，則在傳輸結尾發送STOP字節。

- **addr**: 寫入的地址
- **value**: 要發送的整數數值
- **stop**: 布爾標記，若True則在傳輸結束發送STOP字節