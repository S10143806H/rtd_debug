########
Socket
########

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API Documents**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Constructors**
:raw-html:`</p>`

| **socket.SOCK(**\ *domain*\ [選填], *type*\ [選填]\ **)**
| 創建一個SOCK對象，並根據其他所給的參數來進行配置。SOCK類是socket類的子集，我們主要使用SOCK類來完成socket相關的通訊連接。

-  ``domain``: 地址域類型. 默認爲 ``AF_INET``

   -  ``AF_INET``: IPv4，常見的IP地址，以點為分隔符，正在漸漸被IPv6取代
   -  ``AF_INET6``: IPv6，以冒號為分隔符的IP地址

-  ``type``: 類型， 默認爲 ``SOCK_STREAM``

   -  ``SOCK_STREAM``: TCP 類型
   -  ``SOCK_DGRAM``: UDP 類型


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **socket.SOCK.connect(**\ *host*\ [必填], *port*\ [必填]\ **)**
| 該方法連接一個遠程的服務器

-  **host:** 字串格式的服務器地址
-  **port:** 整數格式的端口號

| **socket.SOCK.bind(**\ *port*\ [必填]\ **)**
| 這個方法創建一個服務器socket，並綁定到所指定的端口上

-  **port:** 端口號為整型數值

| **socket.SOCK.listen()**
| 這個方法將服務器socket設爲listen模式，等待客戶端的連接

| **socket.SOCK.accept()**
| 這個方法接受一個客戶端的連接要求，生成並返回一個新的socket對象來進行之後的通信

| **socket.SOCK.recv(**\ *length*\ [必填]\ **)**
| 這個方法等待並接收length長度的數據

-  **length**: 預期接收的數據長度

| **socket.SOCK.send(**\ *buffer*\ [必填]\ **)**
| This method sends data stored in the buffer

-  **buffer**: 一個array/bytearray/string 類型的緩存器

| **socket.SOCK.settimeout(**\ *seconds*\ [必填]\ **)**
| 這個方法將socket的timeout時間設爲seconds秒

-  **seconds**: timeou時間（秒）

| **socket.SOCK.close()**
| 這個方法關閉socket