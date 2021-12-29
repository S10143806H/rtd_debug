��    4      �              \  b  ]  ?   �  �      2   �  N  	  9  X  Y   �  5   �  =   "	  �   `	  �   
  �   �
    5  Z   B  �   �  L   ;  )  �     �  �   �  �   H  p   �     G  �   �  �   �  %   6  �   \  K   K  a   �  P   �  s   J  b   �  O   !  U   q     �  "   �  <   �     <     U     s     �  �  �  �   �  {   f  [   �  �   >     
  �      E   �  o     o   q  x   �    Z    �  B   �  �   4   +   �   "  !  -  6"  U   d#  +   �#  ?   �#  o   &$  �   �$  �   4%  �   �%  ;   �&  �   �&  =   �'     �'     �(  y   �(  s   v)  F   �)  �   1*  �   �*  �   v+     ,  �   1,  R   -  X   U-  B   �-  `   �-  ?   R.  ;   �.  R   �.     !/     ./  <   A/     ~/     �/     �/     �/  �  �/  �   �1  ~   <2  R   �2  �   3     �3  �   �3  ?   _4  \   �4  g   �4  n   d5   After the installation tool running successfully, you may open Arduino IDE and proceed to :guilabel:`“Tools” -> “Board“ -> “Boards Manager…”`. Try to find :guilabel:`“Realtek AmebaD Boards (32-bits ARM Cortex-M4 @200MHz)”`` in the list, click :guilabel:`“Install”`, then the Arduino IDE starts to download required files for AmebaD. Afterwards, we will upload the compiled code to RTL8722DM MINI. Again, during the uploading procedure the IDE prints messages. Uploading procedure takes considerably longer time (about 30 seconds to 1 minute). When upload completed, the “Done uploading” message is printed. Ameba ARDUINO: Getting Started with RTL8722DM MINI Ameba is an easy-to-program platform for developing all kind of IoT applications. AmebaD is equipped with various peripheral interfaces, including WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC. Through these interfaces, AmebaD can connect with electronic components such as LED, switches, manometer, hygrometer, PM2.5 dust sensors, …etc. AmebaD RTL8722DM MINI board currently supports Windows OS 32-bits and 64-bits (WIN7/8/10), Linux OS (Ubuntu 18 LTS/20 LTS/latest) and macOS operating systems. Please use the latest OS version to have the best experiences. In this documentation, please use the latest version Arduino IDE (at least version 1.8.12). And paste the following URL into :guilabel:`“Additional Boards Manager URLs”` field:: Arduino IDE can be downloaded in the Arduino website: Arduino IDE opens a new window with the complete sample code. Arduino IDE prints the compiling messages in the bottom area of the IDE window. When the compilation is finished, you will get the message similar to the following figure: Arduino IDE provides many built-in examples, which can be compiled, uploaded and run directly on the boards. Here, we take the “Blink” example as the first try. Change “LED_BUILTIN” to “LED_B” or “LED_G” for different colour. Onboard LEDs options LED_B and LED_G (blue and green). Download the files selected, then unzip (patch1 and patch2 are compulsory). There are “Install.doc”/“Install.pdf” for you to refer installation steps. According to your system, please run the installation tool in the “Offline_SDK_installation_tool” folder. Finally, press the :guilabel:`RESET` button, and you can see the :guilabel:`LED` blinking. Finally, we select AmebaD as current connected board in :guilabel:`“Tools” -> “Board” -> “Ameba ARM (32-bits) Boards” ->” RTL8722DM MINI”`： First, connect RTL8722DM MINI to the computer via Micro USB (same as power): From version 1.6.5, Arduino IDE supports third-party hardware. Therefore, we can use Arduino IDE to develop applications on RTL8722DM MINI, and the examples of Arduino can run on RTL8722DM MINI too. Refer to `basic example link <https://www.amebaiot.com.cn/amebad-mini-arduino-compatible-ex/>`__. Getting Started If this is the first time you connect RTL8722DM MINI to your computer, the USB driver for RTL8722DM MINI will be automatic installed. If you are facing GitHub downloading issue, please refer to the following link at `Download/Software Development Kit`_. There are 3 sections: If you face any issue, please refer to the FAQ and Trouble shooting sections on :doc:`../../support/index` page. If you have driver issue of connect board to your computer please go to `here <https://ftdichip.com/drivers/>`_ for USB driver. In each example, Arduino not only provides sample code, but also detailed documentation, including wiring diagram, sample code explanation, technical details, …etc. These examples can be directly used on RTL8722DM MINI. In short, for RTL8722DM MINI, the example can be run on both onboard LEDs (green or blue) or external LED (use any GPIO pins for signal output). Introduction to AmebaD RTL8722DM MINI It is optional for users to check if the board entered the upload mode. Open serial monitor/terminal and look for “#Flash Download Start”. Note, it is normal that some serial terminals may show unknown characters as following picture. Next, go to :guilabel:`“Tools” -> “Board” -> “Boards Manager”`: Next, we compile the sample code directly; click :guilabel:`“Sketch” -> “Verify/Compile”` Open :guilabel:`“File” -> “Examples” -> “01.Basics” -> “Blink”`: Please make sure RTL8722DM MINI is connected to your computer, then click :guilabel:`“Sketch” -> “Upload”`. Please refer to the following figure and table for the pin diagram and function of RTL8722DM MINI. RTL8722DM MINI has smaller size than Arduino Uno, as shown in the above figure. RTL8722DM MINI uses Micro USB to supply power, which is common in many smart devices. Required Environment Setting up Development Environment So, we find the detailed information of the "Blink" example: Step 1. Compile & Upload Step 1. Installing the Driver Step 2. Set up Arduino IDE Step 2.Run the Blink example The :guilabel:`“Boards Manager”` requires about 10~20 seconds to refresh all hardware files (if the network is in bad condition, it may take longer). Every time the new hardware is connected, we need to reopen the Board Manager. So, we close the :guilabel:`“Boards Manager”`, and then open it again. Find :guilabel:`“Realtek AmebaD Boards (32-bits ARM Cortex-M4 @200MHz)”` in the list, click :guilabel:`“Install”`, then the Arduino IDE starts to download required files for AmebaD. The Arduino IDE will compile first then upload. During the uploading process, users are required to enter the upload mode of the board. Arduino IDE will wait 5s for DEV board to enter the upload mode. The collected data can be uploaded via WiFi and be utilized by applications on smart devices to realize IoT implementation. There are onboard LED of TRL8722DM_MINI, the default “LED_BUILTIN” is blue onboard LED. To enter the upload mode, first press and hold the :guilabel:`UART_DOWNLOAD` button, then press the :guilabel:`RESET` button. If success, you should see the onboard green LED and blue LED all turned off. Try the First Example When the installation is finished, open Arduino IDE. To set up RTL8722DM MINI correctly in Arduino IDE, go to :guilabel:`“File” -> “Preferences”`. You can check the COM port number in Device Manager of your computer: “AmebaD_Arduino_Source_Code”, this section is optional download only wants to refer the latest source code. “AmebaD_Arduino_patch1_SDK”, please select at least 1 of the SDKs. There are 5 latest released SDK options. “AmebaD_Arduino_patch2_Tools”, please select according to your operation system. There are Windows, Linux and MacOS. Project-Id-Version: AmebaDocs EPUB3
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
 安裝工具運行成功後，您可以打開Arduino IDE並選擇 “tools” -> “Board“ -> “Boards Manager…”。嘗試在列表中找到“Realtek AmebaD Boards (32-bits ARM Cortex-M33 @200MHz)”，點擊“Install”，Arduino IDE開始下載AmebaD所需的文件。 之後，我們將把編譯後的代碼上傳到 RTL8722DM MINI。 同樣，在上傳過程中IDE會自動顯示消息。上傳過程需要相當長的時間 (大約30秒到1分鐘)。上傳完成後，您會看到 “Done uploading” 消息。 Ameba ARDUINO：RTL8722DM MINI 入門手冊 Ameba是一個易於編程的微控制器平台，可用於開發各種物聯網應用程序。AmebaD有各種外圍接口，包括WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC。通過這些接口，AmebaD可以連接LED、開關、壓力計、濕度計、PM2.5粉塵傳感器等電子元件。 AmebaD RTL8722DM MINI 開發板目前支持 Windows OS 32 位元和 64 位元（WIN7/8/10）、Linux OS（Ubuntu 18 LTS/20 LTS/最新）和 macOS 作業系統。請使用最新的作業系統版本以獲得最佳體驗。在本文檔中，請使用最新版本的 Arduino IDE（至少 1.8.12 版）。 並將以下網址粘貼到 :guilabel:`“Additional Boards Manager URLs”` 欄位:: Arduino IDE 可以在 Arduino 網站下載: Arduino IDE 打開一個帶有完整示例代碼的新視窗。 Arduino IDE在IDE窗口的底部區域打印編譯消息。編譯完成後，會得到如下圖所示的消息: Arduino IDE提供了很多內置的範例，可以在開發板上直接編譯、上傳和運行。這裡，我們以“Blink”為例進行第一次嘗試。 將 “LED_BUILTIN” 更改為 “LED_B” 或 “LED_G” 以使用不同的顏色。 板載 LED 選項 LED_B 和 LED_G （藍色和綠色）。 下載選擇的文件，然後解壓（patch1 和patch2 是必須的）。有“Install_中文.doc”/“Install_中文.pdf”供您參考安裝步驟。根據您的系統，請運行“Offline_SDK_installation_tool”文件夾中的安裝工具。 最後，按RESET按鈕，你就會看到LED開始閃爍。 最後，我們在“tools”->“Board”->“Ameba ARM (32-bits) Boards”->“RTL8722DM MINI”中選擇了AmebaD作為當前連接的開發板: 首先，通過 Micro USB 將 RTL8722DM MINI 連接到電腦: 從1.6.5版本開始，Arduino IDE支持第三方硬件。因此，我們可以使用Arduino IDE在 RTL8722DM MINI上開發應用程序，Arduino 的示例也可以在 RTL8722DM MINI上運行。請參考 `基本範例 <https://www.amebaiot.com.cn/amebad-mini-arduino-compatible-ex/>`__。 入門手冊 如果這是您第一次將RTL8722DM MINI連接到您的電腦，那麼RTL8722DM MINI的USB驅動程序將自動安裝。 如果您遇到 GitHub 下載問題，請參考以下“下載/軟體開發套件”中的鏈接。有3個部分。 如果您遇到任何問題，請參考 :doc:`../../support/index` 。 如果遇到開發板連接到電腦的驅動程序問題，請參考下列 `USB 驅動程序 <https://ftdichip.com/drivers/>`_ 。 在每個示例中，Arduino不僅提供了示例代碼，還提供了詳細的文檔，包括接線圖、示例代碼說明、技術細節等。這些示例可以直接用於RTL8722DM MINI。 簡而言之，對於RTL8722DM MINI，該示例可以在板上LED（綠色或藍色）或外部 LED（使用任何GPIO引腳進行信號輸出）上運行。 AmebaD RTL8722DM MINI 介紹 用戶可選擇檢查開發板是否進入上傳模式。 打開串行監視器並查找“#Flash Download Start”。請注意，某些串口終端可能會顯示如下圖所示的未知字符是正常的。 接下來，選擇 :guilabel:`“Tools” -> “Board” -> “Boards Manager”`: 接下來，我們直接編譯示例代碼，點擊 “Sketch” -> “Verify/Compile” 打開 “File”->“Examples”->“ 01.Basics”-> “Blink”: 請確保 RTL8722DM MINI 已連接到您的電腦，然後單擊 “Sketch” -> “Upload”。 RTL8722DM MINI 的引腳圖和功能請參考下圖和表格。 AmebaD 和 Arduino UNO 的尺寸類似，如上圖所示。 RTL8722DM MINI 使用 Micro USB來供電，這在許多智能設備中很常見。 工作環境 設置開發環境 在這裡我們可以找到Blink這個示例的詳細信息: 步驟一、編譯和上傳 步驟一、安裝驅動程序 步驟二、設置 Arduino IDE 步驟二、運行 Blink 示例 “Boards Manager”大約需要10~20秒來刷新所有硬件文件(如果網絡狀況不好，可能需要更長的時間)。每次連接新硬件時，我們都需要重新打開Boards Manager。因此，我們先關閉然後再次打開它。在列表中找到“Realtek AmebaD Boards (32-bits ARM Cortex-M33 @200MHz)”，點擊“Install”，Arduino IDE會自動開始下載AmebaD所需的文件。 Arduino IDE將先編譯，然後上傳。在上傳過程中，用戶需要將開發板調至上傳模式。 Arduino IDE會等待5秒鐘，等待開發板進入上傳模式。 Ameba所收集的數據可以通過WiFi無線上傳，並被智能設備上的應用程序使用，實現物聯網的應用。 開發板上有 RTL8722DM MINI 的 LED，默認 “LED_BUILTIN” 是藍色的 LED 想要進入上傳模式，首先按住UART_DOWNLOAD按鈕不放，然後輕按RESET按鈕。上傳成功后，你可以看到板載的綠色和藍色 LED熄滅。 嘗試第一個範例 安裝完成後，打開 Arduino IDE。為了在 Arduino IDE 中正常使用 RTL8722DM MINI，請打開 :guilabel:`“File” -> “Preferences”`。 你可以在你電腦的裝置管理員中檢查 COM 端口號: “AmebaD_Arduino_Source_Code”，此部分為可選下載，用來參考最新原始碼。 AmebaD_Arduino_patch1_SDK”，請至少選擇 1 個 SDK。目前有 5 個最新發布的 SDK 選項。 “AmebaD_Arduino_patch2_Tools”，請根據您的作業系統進行選擇。有 Windows、Linux 和 MacOS。 