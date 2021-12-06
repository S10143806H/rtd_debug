####
PWM
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **PWM(**\ *unit*\ [選填]\ *, "pin_name"*\ [必填]\ **)**
| 使用預設的pin名字來創建一個PWM對象。 可以向預設的pin來編寫PWM信號

- ``unit``:  PWM的號碼, 如果沒有填寫預設是0
- ``"pin_name"``: pin的名字, 此名字必須是string格式. 參考下列PWM支援的pins
  
.. note::   
   | 目前只有下列的引脚支援PWM：
   | PA_23 , PA_24 , PA_25 , PA_26


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`
   
| **PWM.write(**\ *dutycycle_float*\ [必填]\ **)**
| 聲明Pin對象後，此方法將返回關聯的GPIO引腳名稱。

- **dutycycle_float**: 浮點duty cycle，可以從0.0（0％）到1.0（100％)