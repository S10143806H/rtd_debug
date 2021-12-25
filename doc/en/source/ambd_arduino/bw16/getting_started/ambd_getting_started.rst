###############
Getting Started
###############

*******************************************
Ameba ARDUINO: Getting Started with BW16
*******************************************

Required Environment
====================

RTL8720DN Dual-Band Wi-Fi board currently supports Windows XP/7/8/10 32-bits and 64-bits 
operating systems. In this documentation, please use Arduino IDE with version 1.8.15 or later.

Introduction to BW16
===========================================

Realtek RTL8720DN is a Wi-Fi and Bluetooth IC that supports 2.4GHz and 5GHz dual bands for 
Wi-Fi communication, and Bluetooth Low Energy (BLE) 5.0. BW16 is a module manufactured by B&T, 
this module is a highly integrated Wi-Fi and Bluetooth module with the RTL8720DN as the main SoC 
(System on Chip), it can be regarded as an SoC for the Wi-Fi and Bluetooth application with typical SBCs.

   |bw16-get-start-1|

RTL8720DN (BW16) has a smaller size than AmebaD and AmebaD MINI as shown in the above figure. 
It uses Micro USB to supply power, which is common in many smart devices.
Please refer to the following figure and table for the pin diagram and function of RTL8720DN (BW16).

   |bw16-get-start-2|

=========  ========  ====  ==== ===== ============== ========= ========
\#         PIN name  GPIO  ADC  PWM   UART           SPI       I2C
=========  ========  ====  ==== ===== ============== ========= ========
D0(PA7)    GPIOA_7   ✓                UART_LOG_TX              
D1(PA8)    GPIOA_8   ✓                UART_LOG_RX              
D2(PA27)   GPIOA_27   ✓                                     
D3(PA30)   GPIOA_30  ✓                                            
D4(PB1)    GPIOB_1   ✓                Serial_TX                            
D5(PB2)    GPIOB_2   ✓                Serial_RX                   
D6(PB3)    GPIOB_3   ✓     A2                                       
D7(PA25)   GPIOA_25                   ✓                        I2C0_CLK
D8(PA26)   GPIOA_26  ✓          ✓                              I2C0_SDA
D9(PA15)   GPIOA_15  ✓                               SPI_CS
D10(PA14)  GPIOA_14  ✓                               SPI_CLK    
D11(PA13)  GPIOA_13  ✓          ✓                    SPI_MISO  
D12(PA12)  GPIOA_12  ✓          ✓                    SPI_MOSI  
=========  ========  ====  ==== ===== ============== ========= ========

**********************************
Setting up Development Environment
**********************************

Step 1. Installing the Driver
=============================

First, connect RTL8720DN (BW16) to the computer via Micro USB:
   |bw16-get-start-3|

| If this is the first time you connect RTL8720DN (BW16) to your computer, 
  here is something that you might take note of: 

| From the pinmap above, we know D0 and D1 pins are used for program uploading. 
  However, according to the schematic design of AI Thinker, the onboard USB-to-UART 
  module is connected to D4 and D5 which cannot be directly used for program upload.
| In order to upload firmware to this board, we suggested that you could choose to 
  add in an external USB-to-UART module connecting to D0 and D1 as shown in the 
  pin connection below:

   |bw16-get-start-4|

| Optionally, you could short the pins indicated below to use the on-board USB:
|   D1 ––– D5
|   D0 ––– D4

   |bw16-get-start-5|

| After connecting accordingly, the USB driver for RTL8720DN (BW16) will be 
  automatically installed. If you have driver issue of connecting board, please 
  go to http://www.wch-ic.com/downloads/CH341SER_ZIP.html for USB driver. 
  You can check the COM Port number in your Device Manager:
   
   |bw16-get-start-6|

Step 2. Set up Arduino IDE
==========================

From version 1.6.5, Arduino IDE supports third-party hardware.
Therefore, we can use Arduino IDE to develop applications on RTL8722DM,
and the examples of Arduino can run on RTL8722DM too. Arduino IDE can be
downloaded in the `Arduino website <https://www.arduino.cc/en/Main/Software>`_.

When the installation is finished, open Arduino IDE. To set up RTL8722DM
correctly in Arduino IDE, go to :guilabel:`“File” -> “Preferences”`.

|bw16-get-start-6|

And paste the following URL into :guilabel:`“Additional Boards Manager URLs”` field::
      
   https://github.com/ambiot/ambd_arduino/raw/master/Arduino_package/package_realtek.com_amebad_index.json

----

Next, go to :guilabel:`“Tools” -> “Board” -> “Boards Manager”`:

|bw16-get-start-7|

The :guilabel:`“Boards Manager”` requires about 10~20 seconds to refresh all
hardware files (if the network is in bad condition, it may take longer).
Every time the new hardware is connected, we need to reopen the Board
Manager. So, we close the :guilabel:`“Boards Manager”`, and then open it again. Find
:guilabel:`“Realtek AmebaD Boards (32-bits ARM Cortex-M4 @200MHz)”` in the list,
click :guilabel:`“Install”`, then the Arduino IDE starts to download required files
for RTL8722DM.

|bw16-get-start-8|

| If you are facing GitHub downloading issue, please refer to the
  following link at `Download/Software Development Kit`_. There are 3
  sections:

      1. “AmebaD_Arduino_patch1_SDK”, please select at least 1 of the SDKs. There are 5 latest released SDK options.
      2. “AmebaD_Arduino_patch2_Tools”, please select according to your operation system. There are Windows, Linux and MacOS. 
      3. “AmebaD_Arduino_Source_Code”, this section is optional download only wants to refer the latest source code.

.. _Download/Software Development Kit: https://www.amebaiot.com.cn/en/ameba-arduino-summary/

   Download the files selected, then unzip (patch1 and patch2 are compulsory). 
   There are “Install.doc”/“Install.pdf” for you to refer installation steps. 
   According to your system, please run the installation tool in the 
   “Offline_SDK_installation_tool” folder.

   After the installation tool running successfully, you may open Arduino
   IDE and proceed to :guilabel:`“Tools” -> “Board“ -> “Boards Manager…”`. Try to find
   :guilabel:`“Realtek AmebaD Boards (32-bits ARM Cortex-M4 @200MHz)”`` in the list,
   click :guilabel:`“Install”`, then the Arduino IDE starts to download required files
   for RTL8722DM.

----

Finally, we select RTL8722DM as current connected board in 
:guilabel:`“Tools” -> “Board” -> “Ameba ARM (32-bits) Boards” ->” RTL8722DM”`：

|bw16-get-start-9|


*********************
Try the First Example
*********************

Step 1. Compile & Upload
========================

| Arduino IDE provides many built-in examples, which can be compiled,
  uploaded and run directly on the boards. Here, we take the “Blink”
  example as the first try.
| Open :guilabel:`“File” -> “Examples” -> “01.Basics” -> “Blink”`:

|bw16-get-start-10|

Arduino IDE opens a new window with the complete sample code.

|bw16-get-start-11|

Next, we compile the sample code directly; click 
:guilabel:`“Sketch” -> “Verify/Compile”`

|bw16-get-start-12|

Arduino IDE prints the compiling messages in the bottom area of the IDE
window. When the compilation is finished, you will get the message
similar to the following figure:

|bw16-get-start-13|

| Afterwards, we will upload the compiled code to RTL8722DM.
| Please make sure RTL8722DM is connected to your computer, then
  click :guilabel:`“Sketch” -> “Upload”`.

| The Arduino IDE will compile first then upload. During the uploading
  process, users are required to enter the upload mode of the board.
  Arduino IDE will wait 5s for DEV board to enter the upload mode.

|bw16-get-start-14|

To enter the upload mode, first press and hold the :guilabel:`UART_DOWNLOAD` button,
then press the :guilabel:`RESET` button. If success, you should see the LED flashing
on the DEV board.

|bw16-get-start-15|

It is optional for users to check if the board entered the upload mode. 
Open serial monitor/terminal and look for “#Flash Download Start”. 
Note, it is normal that some serial terminals may show unknown characters as following picture.

|bw16-get-start-16|

Again, during the uploading procedure the IDE prints messages. Uploading
procedure takes considerably longer time (about 30 seconds to 1 minute).
When upload completed, the “Done uploading” message is printed.

|bw16-get-start-18|

Step 2.Run the Blink example
============================

| In each example, Arduino not only provides sample code, but also
  detailed documentation, including wiring diagram, sample code
  explanation, technical details, …etc. These examples can be directly
  used on RTL8722DM.
| So, we find the detailed information of the 
  `Blink example <https://www.arduino.cc/en/Tutorial/Blink>`__.


| In short, this example makes LED blinks, and it uses GPIO pin 08
  (refer to the pin diagram ``D08``). Then we connect the LED and resistance
  as the following figure:
| （NOTE: In an LED, the longer pin is the positive pole, and shorter
  pin is the negative pole. So we connect the longer pin to ``D08``, and
  connect the shorter pin to ``GND``. In addition, please use a resister
  with suitable resistance in series between LED and GND to protect LED）

|bw16-get-start-17|

| Finally, press the :guilabel:`RESET` button, and you can see the :guilabel:`LED` blinking.

**(End)**

-----------------------------------------------------------------------------------

.. note:: 
   If you face any issue, please refer to the FAQ and Trouble shooting sections on :doc:`../../support/index` page.  

.. |bw16-get-start-1| image:: ../media/getting_started/image1.png
   :width: 516
   :height: 438
   :scale: 80 %
.. |bw16-get-start-2| image:: ../media/getting_started/image2.png
   :width: 2363
   :height: 1103
   :scale: 25 %
.. |bw16-get-start-3| image:: ../media/getting_started/image3.png
   :width: 414
   :height: 690
   :scale: 50 %
.. |bw16-get-start-4| image:: ../media/getting_started/image4.png
   :width: 820
   :height: 584
   :scale: 50 %
.. |bw16-get-start-5| image:: ../media/getting_started/image5.png
   :width: 795
   :height: 579
   :scale: 50 %
.. |bw16-get-start-6| image:: ../media/getting_started/image6.png
   :width: 307
   :height: 484
   :scale: 100 %

.. |bw16-get-start-7| image:: ../media/getting_started/image7.png
   :width: 690
   :height: 834
   :scale: 100 %

.. |bw16-get-start-8| image:: ../media/getting_started/image8.png
   :width: 800
   :height: 450
   :scale: 100 %

.. |bw16-get-start-9| image:: ../media/getting_started/image9.png
   :width: 697
   :height: 767
   :scale: 100 %

.. |bw16-get-start-10| image:: ../media/getting_started/image10.png
   :width: 570
   :height: 692
   :scale: 100 %

.. |bw16-get-start-11| image:: ../media/getting_started/image11.png
   :width: 500
   :height: 600
   :scale: 100 %

.. |bw16-get-start-12| image:: ../media/getting_started/image12.png
   :width: 500
   :height: 600
   :scale: 100 %

.. |bw16-get-start-13| image:: ../media/getting_started/image13.png
   :width: 500
   :height: 600
   :scale: 100 %

.. |bw16-get-start-14| image:: ../media/getting_started/image14.png
   :width: 628
   :height: 175
   :scale: 100 %

.. |bw16-get-start-15| image:: ../media/getting_started/image15.png
   :width: 732
   :height: 752
   :scale: 50 %

.. |bw16-get-start-16| image:: ../media/getting_started/image18.png
   :width: 930
   :height: 603
   :scale: 80 %

.. |bw16-get-start-17| image:: ../media/getting_started/image17.png
   :width: 1123
   :height: 1048
   :scale: 50 %

.. |bw16-get-start-18| image:: ../media/getting_started/image16.png
   :width: 588
   :height: 289
   :scale: 100 %