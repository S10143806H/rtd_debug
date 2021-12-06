############
常見問題
############

.. admonition:: 什麼是MicroPython以及如何使用它？
   :class: dropdown, toggle

    有關更多資訊，請參考 `MicroPython官方網站 <https://docs.micropython.org/en/latest/index.html>`_ 。


.. admonition:: 可以使用所有的Python標準函式庫嗎？
   :class: dropdown, toggle

    不可以，MicroPython僅支持Python標準函式庫的一小部分。 但是可以通過將標準的python庫移植到MicroPython來使用。


.. admonition:: RTL8722CSM / RTL8722DM上的所有引腳都可用嗎？
   :class: dropdown, toggle

    不可以，那些標有“NC”的因未連接到任何引腳，因此無法使用。


.. admonition:: RTL8722CSM是否支持5G WiFi？
   :class: dropdown, toggle

    否。僅RTL8722DM支持雙頻2.4G + 5G WiFi。 RTL8722CSM僅支持單頻段2.4G WiFi。

.. admonition:: 如何進入下載模式？
   :class: dropdown, toggle

    按住UART DOWNLOAD按鈕。 然後按下RESET按鈕並釋放UART DOWNLOAD和RESET按鈕。