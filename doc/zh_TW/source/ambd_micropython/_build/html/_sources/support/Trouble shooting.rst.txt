#####################
故障排除
#####################

.. admonition:: MicroPython 韌體編譯失敗
   :class: dropdown, toggle

    在構建過程中，某些用戶可能會遇到導致過程暫停的錯誤，這是由於缺少系統環境設置而導致的，可以通過以下方法進行修復。

    1. **與python相關的錯誤**
       
       預設下，MicroPython使用 `Python3` 運行 MicroPython kernal 的構建腳本，
       如果遇到與python相關的錯誤，可能是因為 `Python3` 檔案相關路徑未添加到系統環境變量中。
       
       但是，如果已經添加了環境變量，但是構建依舊無法完成，則可以嘗試
      
       1. 重新啟動電腦
       2.  | 在終端上輸入“python”，如果顯示的python是 `Python3`，則請添加
           | **`PYTHON = python`**
           | 到路徑“port/rtl8722”文件夾下“Makefile”的第二行

    1. **與MPY-CROSS相關的錯誤**
       
       如果構建過程停止並顯示錯誤為mpy-cross，則需要執行以下步驟

       1. 到“MicroPython_RTL8722/mpy-cross”文件夾下
       2. | 打開您的Cygwin/Linux終端，然後輸入
          | **`make`**
          | 等待MicroPython Cross Compiler的構建完成，然後應該可以修復錯誤


.. admonition:: 程式碼未按預期運行
   :class: dropdown, toggle

    嘗試使用 **print( )** 函數調試程序，並在API頁面詳細了解每個API。  
    

.. admonition:: 為什麼不斷從REPL收到“syntax error”？
   :class: dropdown, toggle

    請注意MicroPython僅支持 **Python3** 語法


.. admonition:: 如何將Python腳本上傳到Ameba開發板？
   :class: dropdown, toggle

    有3種方式將Python代碼上傳到Ameba開發板

    1. **通過REPL normal模式**
   
       在一般的REPL模式下，您可以逐行粘貼代碼到REPL上並按順序執行它們，但是請注意，在使用條件檢查或循環時（例如“if”或“while”），代碼將被自動縮排，不正確的縮排將導致腳本錯誤。
    
    2. **通過REPL paste模式**
       
       在一般的REPL模式下，按“Ctrl” +“e”可以進入paste模式，paste模式僅允許粘貼完整的程式碼，粘貼不完整的程式碼或編輯會導致語法錯誤。

    3. **通過mp_frozenmodules**
       
       將python腳本放入“rtl8722”路徑下的“mp_frozenmodules”文件夾中，您的程式碼將被嵌入到MicroPython固件中並上傳到Ameba，接著您只需導入python腳本的名稱即可使用它。


.. admonition:: 連接到RTL8722CSM / RTL8722DM UART後，為什麼串行終端上沒有輸出結果？
   :class: dropdown, toggle

    RTL8722CSM / RTL8722DM 默認配置為 ``115200``` baudrate，請檢查串行終端是否配置為 ``115200``。


.. admonition:: 程序沒有被下載到RTL8722CSM / RTL8722DM中？
   :class: dropdown, toggle

    請按照以下步驟正確下載。
    1.進入下載模式。 進入下載模式時，開發板上的綠色LED會閃爍
    2.下載固件時，開發板上的紅色LED將閃爍
    3.成功下載後，您將看到類似“All images sent successfully”的訊息


.. admonition:: 爲什麽有時WiFi信號較弱？
   :class: dropdown, toggle

    RTL8722CSM / RTL8722DM的天線預設是使用 I-Pex 接口。 請更換/連接I-Pex 接口的天線。


.. admonition:: 為什麼我的開發板無法上電?
   :class: dropdown, toggle

    請確保已連接電阻R43旁的connector J38。 該連接器用於將電源鏈接到IC。


.. admonition:: 遇到開發板連接到電腦的驅動程式問題?
   :class: dropdown, toggle

    請參考下列USB 驅動程式 https://ftdichip.com/drivers /。