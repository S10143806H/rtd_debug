��    0      �                G     �   e  �     "   �  s   �  M   D  �   �  �   ,  �   �  �   O  )        2     L  N   j  �   �  �   p	  �   
     �
  \   �
  _     �   t  �   X  "   %  u   H  K   �  �   
  �   �  T   �  2     0   Q  =   �  !   �  I   �  ?   ,  V   l  (   �     �  U     ^   \  @   �     �  b    (   }  �   �  J   O     �  A   �    �  X   `  �   �  {   C     �  [   �  >   ;  �   z  �     �   �  �     )   �     
       ?   /  �   o  �     �   �     K  J   X  N   �  �   �  �   �      _   �   �   C   !  �   I!  �   �!  L   �"  0   �"  '   #  B   D#     �#  B   �#  >   �#  4   %$     Z$     t$  H   �$  H   �$  ,   %     L%    \%  "   x&  �   �&  F   ='     �'  '   �'   **Click Chip Select(in red) on UI and select chip (AmebaD or AmebaZ).** **Click Download button to start. The progress bar will show the transmit progress of each image. You can also get the message of operation successfully or errors from the log window.** **Click the Browse button to select the images (km0_boot_all.bin/km4_boot_all.bin/km0_km4_image2.bin) to be programmed and input addresses.** **Enter into UART_DOWNLOAD mode.** **Select the corresponding serial port and transmission baud rate. The default baudrate is 1.5Mbps (recommended).** 1. 32-bit ``Cygwin`` is supported both for 32-bit Windows and 64-bit Windows. 2. During the installation of ``Cygwin`` package, include ‘Devel -> make’ and ‘Math -> bc’ utilities on the Select Packages page, as below shows. After built successfully, the image file is located in ``project/realtek_amebaD_va0_example/GCC-RELEASE/project_hp/asdk/image``, as below shows. After successfully built, the image file is located in ``project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp/asdk/image`` , as below shows. Assuming that the ImageTool on PC is a server, it sends images files to Ameba (client) through UART. To download image from server to client, the client must enter uart download first. Building the First GCC Project on Ameba-D Connection to Log Console Downloading Images to Ameba-D Environment Requirements: EX. WinXP, Win 7 Above, Microsoft .NET Framework 3.5 First, you need to switch to GCC project directory. For Windows, open ``Cygwin`` terminal and use ``$ cd`` command to change directory to KM0 or KM4 project directory of Ameba-D SDK. For Ameba-D, there are many types of chipsets available, such as RTL8720CS, RTL8721CSM, RTL8722CSM, RTL8720DN, RTL8720DM, RTL8721DM, and RTL8722DM. For Linux, refer to `AN0400 Ameba-D Application Note v12.pdf <https://www.amebaiot.com/zh/sdk-download-manual-8722dm/>`_ to build the GCC development environment. Getting Started If somehow it built failed, type ``$ make clean`` to clean and then redo the make procedure. If somehow it is built failed, type ``$ make clean`` to clean and then redo the make procedure. In addition, the chipsets can be embedded on Ameba-D DEV demo board, which is extended to various I/O interfaces. The corresponding HDK (Hardware Development Kit) documents are available, please contact RTK for further details. KM4 project For KM4 project, if the terminal contains ``“km0_image2_all.bin”`` and ``“Image manipulating end”`` output message, it means that the image has been built successfully, as below shows. Knowledge about Ameba-D Demo Board Linux, open its own terminal and use $ cd command to change directory to KM0 or KM4 project directory of Ameba-D SDK. Now, Ameba board gets into UART_DOWNLOAD mode and is ready to receive data. On Ameba-D board, FTDI Chip and FT232 can be used for the log console and debugger. To view the log console, make use of the terminal tool, such as ``SecureCRT``\/``teraterm``\/``putty`` and etc. We will take our internal tool as an example. On Windows, you can use ``Cygwin`` as the GCC development environment. ``Cygwin`` is a large collection of GNU and open source tools which provide functionality similar to a Linux distribution on Windows. Press the Reset button on Ameba-D board. Some messages can be found in the terminal. Push the UART DOWNLOAD button and keep it pressed. Re-power on the board or press the Reset button. Realtek provides an image tool to download images on windows. Release the UART DOWNLOAD button. Reset button: reset Ameba-D to run firmware after IAR completes download. SWD: SWD interface, used to download images and debug with IAR. Select the corresponding serial uart configure communicate parameter and then open it. Setup of the GCC Development Environment The baudrate is 115200bps The default target address is the SDK default image address, you can use it directly. The following steps are for first-time developer to build GCC project, under existing RTK SDK. The hardware block diagram of Ameba-D demo board is shown below. The image path is located in: To build SDK for normal image, simply use ``$ make all`` command under the corresponding project directories on Cygwin (Windows) or terminal (Linux). KM0 project For KM0 project, if the terminal contains ``“km0_image2_all.bin”`` and ``“Image manipulating end”`` output message, it means that the image has been built successfully, as below shows. USB TO UART: power supply and log print. You need to replace the ``{path}`` to your own SDK location, and add ``“cygdrive”`` prefix in front of the SDK location, so that Cygwin can access your file system. ``ImageTool.exe``  Location: ``SDK\tools\AmebaD\Image_Tool\ImageTool.exe`` and where {path} is the location of the project on your own computer. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-12-27 14:30+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **点选 UI上 的 Chip Select（红色），然后选择芯片（AmebaD 或 AmebaZ）** **点选下载按钮 进度条将显示每个固件的传输进度并且可以从日志窗口获取操作成功消息或错误消息。** **点选浏览按钮以选择要编程的固件（km0_boot_all.bin / km4_boot_all.bin / km0_km4_image2.bin）与其地址** **进入 UART_DOWNLOAD 模式** **选择相应的串行端口和传输波特率， 默认波特率是 1.5Mbps（推荐）** 1.32位 Windows 和 64位 Windows 均支持32位 ``Cygwin``。 2.安装 ``Cygwin`` package 过程中， 如下图所示在 Select Packages 页面中选择 **Devel -> make** 与 **Math -> bc** 功能。 成功构建后，固件档案位于 ``project/realtek_amebaD_va0_example/GCC-RELEASE/project_hp/asdk/image`` 下，如下图所示。 成功构建后，固件档案位于``project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp/asdk/image`` 下，如下图所示。 假设 PC 上的 Image Tool 是服务器，它将通过 UART 将固件档案发送到 Ameba（客户端）。要将档案从服务器下载到客户端，客户端必须首先进入 UART download 模式。 在 Ameba-D 上建立第一个 GCC 项目 连接串口 下载固件至 Ameba-D 环境需求: WinXP, Win 7 以上, Microsoft .NET Framework 3.5 首先，您需要切换到 GCC目录。 对于 Windows，打开 ``Cygwin`` 终端，并使用 ``$ cd`` 命令将目录更改为 Ameba-D SDK 的 KM0 或 KM4 项目目录。 对于 Ameba-D，有许多类型的芯片组可用，例如 RTL8720CS，RTL8721CSM，RTL8722CSM，RTL8720DN，RTL8720DM，RTL8721DM 和 RTL8722DM。 对于 Linux，请参考 `AN0400 Ameba-D Application Note v12.pdf <https://www.amebaiot.com/zh/sdk-download-manual-8722dm/>`_ 来建立GCC开发环境。 入门指南 如果构建失败，请输入 ``$ make clean`` 然后重新执行 make。 如果构建失败，请输入 ``$ make clean`` 然后重新执行 ``make``。 此外，芯片组可以嵌入在 Ameba-D DEV 开发板上且扩展各种 I/O 接口。我们提供了相应的 HDK（硬件开发工具包）文档，请联系 RTK 了解更多详细信息。 KM4 项目 对于 KM4，如果终端输出讯息包含 ``“km0_image2_all.bin”`` 和 ``“Image manipulating end”``，则表示固件已成功构建，如下所示。 Ameba-D 开发板的相关介绍 对于 Linux，请打开自己的终端，然后使用 ``$ cd`` 命令将目录更改为 Ameba-D SDK 的 KM0 或 KM4 项目目录。 现在Ameba 板 进入 UART_DOWNLOAD 模式并准备接收数据。 在 Ameba-D 板上，FTDI 芯片和 FT232 可用于串口和除错器。可以使用 ``SecureCRT`` 、``Teraterm`` 与 ``Putty`` 等终端工具查看串口讯息。 在 Windows 上，可以将 ``Cygwin`` 用作 GCC 开发环境。Cygwin 是 GNU 和开源工具的集合，类似于提供 Linux 相关的功能在 Windows 平台上使用。 然后按 Ameba 上的重置按钮，在终端中可以找到一些讯息。 按下 UART DOWNLOAD 按钮并保持按下状态 重新打开电源，或按重置按钮 瑞昱提供了 Image Tool 在 Windows 中可以方便下载固件 放开 UART DOWNLOAD 按钮 Reset Button: IAR 完成下载后，重置 Ameba-D 以运行固件 SWD: SWD 接口，用于下载图像和使用 IAR 进行调试 选择相对应的uart参数且打开连接端口。 GCC 开发环境的设置 波特率: 为 115200bps 默认目标地址是SDK默认固件地址，您可以直接使用它。 以下步骤供首次开发人员在现有 RTK SDK 下构建GCC项目。 Ameba-D 开发板的硬件图如下所示： 固件地址为 要构建一般固件的SDK，只需在Cygwin（Windows）或终端（Linux）上相应目录下使用命令。KM0 project 对于 KM0，如果终端输出讯息包含 ``“km0_image2_all.bin”`` 和 ``“Image manipulating end”``，则表示固件已成功构建，如下所示。 USB TO UART: 供电和日志打印 需要将 ``{path}`` 替换成自己的 SDK 位置，并在 SDK 位置前面添加前缀 ``“cygdrive”``，以便 ``Cygwin`` 可以访问您的文件系统。 ``ImageTool.exe`` 位置:``SDK\tools\AmebaD\Image_Tool\ImageTool.exe`` 与 为自己计算机上项目的地址。 