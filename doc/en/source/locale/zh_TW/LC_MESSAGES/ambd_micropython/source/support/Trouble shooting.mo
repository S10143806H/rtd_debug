��          �               �     �     �  
   �     �  �   �  *   �  �     *   �  d   �  ^   3  %   �  -   �  =   �     $  :   5     p  n   �  S   �  \   D  9   �  6   �  @       S     �     �  
   	     	  �   7	     
  �   "
  /   �
  ]   �
  Q   Y     �  -   �  0   �     &  3   9     m  V   z  R   �  P   $  1   u  2   �  A   �   **Error related to MPY-CROSS** **Error related to Python** **`make`** **via REPL normal mode** By default, MicroPython uses `Python3` to run building scripts for the MicroPython kernals, if you encounter error related to python, it may be because the path of the `Python3` executable is not added to system environment variable. Compilation of MicroPython firmware failed During the building process, some user may encounter error that suspend the process, this is due to missing system environment setup and can be fixed as follows, How to upload my python script into Ameba? However, if environment variable is already added but the build could not be completed, you may try, If building process stop when mpy-cross shown as error, there is a step to be done as follows, My code is not behaving as I expected Open your Cygwin/Linux terminal and just type Please note that MicroPython only support **Python3** syntax. Re-start your PC There are 3 ways of uploading your python code into Ameba, Trouble-shooting Try to debug your program using **print( )** function and learn more about each API used through the API page. Type “python” on your terminal, if the python shown is Python3, then please add Wait for make finish building the MicroPython Cross Compiler, then this should fix the error Why am I constantly getting “syntax error” from REPL? navigate to “MicroPython_RTL8722/mpy-cross” folder to the second line of the `Makefile` under `port/rtl8722` folder Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-12-21 02:28+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **與MPY-CROSS相關的錯誤** **與python相關的錯誤** **`make`** **通過REPL normal模式** 預設下，MicroPython使用 `Python3` 運行 MicroPython kernal 的構建腳本，如果遇到與python相關的錯誤，可能是因為 `Python3` 檔案相關路徑未添加到系統環境變量中。 MicroPython 韌體編譯失敗 在構建過程中，某些用戶可能會遇到導致過程暫停的錯誤，這是由於缺少系統環境設置而導致的，可以通過以下方法進行修復。 如何將Python腳本上傳到Ameba開發板？ 但是，如果已經添加了環境變量，但是構建依舊無法完成，則可以嘗試 如果構建過程停止並顯示錯誤為mpy-cross，則需要執行以下步驟 程式碼未按預期運行 打開您的Cygwin/Linux終端，然後輸入 請注意MicroPython僅支持 **Python3** 語法 重新啟動電腦 有3種方式將Python代碼上傳到Ameba開發板 故障排除 嘗試使用 **print( )** 函數調試程序，並在API頁面詳細了解每個API。 在終端上輸入“python”，如果顯示的python是 `Python3`，則請添加 等待MicroPython Cross Compiler的構建完成，然後應該可以修復錯誤 為什麼不斷從REPL收到“syntax error”？ 到“MicroPython_RTL8722/mpy-cross”文件夾下 到“port/rtl8722”文件夾路徑下“Makefile”的第二行 