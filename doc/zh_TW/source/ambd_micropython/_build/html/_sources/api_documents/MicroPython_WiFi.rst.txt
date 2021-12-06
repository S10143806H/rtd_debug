####
WiFi
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **WLAN(**\ *mode*\ [必填]\ **)**
| 創建一個WLAN對象，然後設定對應的模式，之後可以對WiFi進行控制和查看狀態。

-  ``mode``: ``WLAN.STA`` 是 station 模式

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **WLAN.scan()**
| 搜索和列出周圍所有的WiFi網路

| **WLAN.connect(**\ *ssid*\ [必填], *pswd*\ [選填], *security*\ [選填]\ **)**
| 建立連接至WiFi網路

- **ssid**: WiFi 網路的名稱
- **pswd**: WiFi網路的密碼
- **security**: WiFi網路的安全協議

.. note::  
    如果沒有填寫選填的參數，會使用下面的預設數值。

.. table::
    :align: center

    =========  =============
    參數        默認值
    =========  =============
    pswd       NULL
    security   WPA2_AES_PSK
    =========  =============

.. note::   
    | 如果連接 **PEN** 的網路，可以忽視參數 ``pswd``，
    | 然後在ssid後面輸入 ``security = WLAN.OPEN`` 。

| **WLAN.get_ip()**
| 成功連接至AP後返還當前WLAN介面的IP地址。

| **WLAN.disconnect()**
| 從當前連接的網路斷開連接，但是WiFi模組還在運行

| **WLAN.on()**
| 啓動WiFi

| **WLAN.off()**
| 關閉WiFi並且斷開所有連接

| **WLAN.wifi_is_running()**
| 返還WiFi的狀態，WiFi啓動後返還True，WiFi關閉返還False

| **WLAN.is_connect_to_ap()**
| 返還連接狀態，連接到AP後返還True，如果沒有任何連接返還False