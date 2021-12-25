��                           �     /   �  4   #  +   X  +   �  L   �  ?   �  -   =  X   k  W   �  R     x   o  �   �     �  @   �  �   �  	   t  ^   ~  0   �  R     3   a  Y   �     �  9   	  C   E	  :   �	  B   �	  A   
  D   I
  C   �
  $   �
    �
  �   w  -   =  2   k  )   �  +   �  f   �  8   [  !   �  U   �  W     Q   d  �   �  �   M  	   �  :   �  �   %     �  ]   �  "     <   1  +   n  K   �     �  &     =   -  ]   k  A   �  P     [   \  A   �  <   �   **UART(**\ *unit*\ [optional]\ *, baudrate*\ [optional]\ *, databits*\ [optional]\ *, stopbit*\ [optional]\ *, paritybit*\ [optional]\ *, timeout*\ [optional]\ *, tx_pin*\ [required]\ *, rx_pin*\ [required]\ **)** **UART.irq_enable(**\ *bool*\ [optional]\ **)** **UART.irq_handler(**\ *function*\ [required]\ **)** **UART.read(**\ *length*\ [optional]\ **)** **UART.write(**\ *buffer*\ [require]\ **)** **buffer**: data buffer that can be a string, an integer or other data types **function:** a function defined in python or a lambda function **length:** the length of the data to receive :raw-html:`<p style="color:#0070C0; font-size:26px">` **API Documents** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Constructors** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Methods** :raw-html:`</p>` Check the status of uart irq when NOT passing any argument, and it will return True if irq is enabled, False if disabled Create a UART object associated with the given tx and rx pins and configure it using other parameters. This allows you to then read/write uart signal on the pins. Default Value Enable/disable uart irq handler by passing True or False as bool Not all parameters are required, thus MicroPython will assume its default value once left blank, here are the default values for each optional parameter: Parameter Passing the python handler to uart irq so that it will be triggered when an UART event occurs. This method initializes and configures the UART. This method is similar to read(), but read a line ending with a newline character. This method reads the data received in UART buffer. This method sends the buffer of bytes to the bus and returns the number of bytes written. This method works in 2 way: ``baudrate``: 115200 is the recommended baudrate on ameba ``databits``: the number of bits for data bits, usually 7 or 8 bits ``paritybit``: for parity check, usually none, odd or even ``rx_pin``: the receiver pin, connect to tx pin of the transmitter ``stopbits``: the number of stop bits, usually 1 or 1.5 or 2 bits ``timeout``: how long uart wait before its timeout (in milliseconds) ``tx_pin``: the transmitter pin, connect the rx pin of the receiver ``unit``: The unit ID, either 0 or 3 Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-12-21 02:28+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **UART(**\ *unit*\ [選填]\ *, baudrate*\ [選填]\ *, databits*\ [選填]\ *, stopbit*\ [選填]\ *, paritybit*\ [選填]\ *, timeout*\ [選填]\ *, tx_pin*\ [必填]\ *, rx_pin*\ [必填]\ **)** **UART.irq_enable(**\ *bool*\ [選填]\ **)** **UART.irq_handler(**\ *function*\ [必填]\ **)** **UART.read(**\ *length*\ [選填]\ **)** **UART.write(**\ *buffer*\ [require]\ **)** **buffer**: 字節緩存區，可以存放的數據類型有字符串類型，整型等其他類型。 **function**: 在Python中定義的函數或lambda函數 **length**: 接收數據的長度 :raw-html:`<p style="color:#0070C0; font-size:26px">` **API 文档** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **構造函數** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **方法** :raw-html:`</p>` 當沒有傳入任何參數，該方法檢查UART中斷請求(IRQ)的狀態，如果啟用了IRQ，它將返回True；如果禁用IRQ，則返回False 創建一個與給定的TX和RX引腳相關聯的UART對象，並通過使用其他相關參數進行配置后，便可以在引腳上做讀寫。 默認值 通過傳入True/False來啓用/禁用UART IRQ處理程序 並非所有參數都是必需的，因此如果不填，MicroPython將採用其默認值，下表為所有選填參數的默認值 參數 將Python處理函數傳遞給UART 中斷請求，以便在發生UART事件時將其觸發。 使用此方法初始化UART配置 此方法功能類似於read()但每次會讀出一行內容 此方法用於從UART緩存中讀取數據 該方法將字節緩衝區發送到總線，並返回寫入的字節數。 此方法有兩種使用方式: ``baudrate``:  在Ameba上使用115200 ``databits``: 數據字節的數量，通常爲7到8個字節 ``paritybit``: 用於奇偶校驗，數值通常為none（無），odd（奇）或even(偶） ``rx_pin``: 接收端引脚，通常與發送器的TX引脚連接 ``stopbits``: 停止位的字節數量，通常爲1字節，1.5字節或2 字節 ``timeout``: 計算UART在超時（timeout）之前等待的時間 （以毫秒為單位） ``tx_pin``: 發送端引脚，通常與接受器的RX引脚連接 ``unit``: 代表可使用UART引脚組的ID，可輸入0或3 