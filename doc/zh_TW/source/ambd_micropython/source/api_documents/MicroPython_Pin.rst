####
Pin
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API 文檔**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**構造函數**
:raw-html:`</p>`

| **Pin(**\ *\"pin_name\"*\ [必填]\ *, direction*\ [必填]\ *, pull_mode*\ [選填]\ *, value*\ [選填]\ **)**
| 創建與給定的GPIO引腳名稱關聯的Pin對象，並使用其他參數進行配置。然後，您可以在引腳上讀/寫數值。

-  ``"pin_name"``: 引脚名稱，必須為字符串格式，可使用 help(Pin.board) 查看所有引脚的名稱
-  ``direction``:
   
   - ``Pin.IN`` – 輸入引脚
   - ``Pin.OUT`` - 輸出引脚

-  ``pull_mode``:

   - ``Pin.PULL_NONE`` – 沒有上拉電阻或下拉電阻
   - ``Pin.PULL_UP`` – 啓用上拉電阻
   - ``Pin.PULL_DOWN`` – 啓用下拉電阻
   - 默認值 – ``Pin.PULL_NONE``

-  | ``value``: 初始值，并且僅適用於輸出，例如 ``value = 1``。
   | 默認值 ``value = 0``.


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**方法**
:raw-html:`</p>`

| **Pin.id()**
| 聲明Pin對象后，使用此method將會返回所對應的GPIO引脚名稱

| **Pin.init(**\ *\"pin_name\"*\ [必填]\ *, direction*\ [必填]\ *, pull_mode*\ [選填]\ *, value*\ [選填]\ **)**
| 此方法與構造函數作用相同，使用鍵入的參數創建和初始化Pin對象。

| **Pin.value(**\ *number*\ [選填]\ **)**
| 此方法有以下兩種用途，

   1. 輸出 *number* 數值

      *number* 的數值可以是 0 或者 1, 用來表示邏輯狀態的 0 或 1
   
   2. 檢查當前引脚狀態

      當沒有數值輸入時，無論引脚配置方向，此方法都會查看當前引脚的邏輯狀態(0/1)

| **Pin.on()**
| 此方法會向相應的引脚發送邏輯信號“1“

| **Pin.off()**
| 此方法會向相應的引脚發送邏輯信號“0“

| **Pin.toggle()**
| 該方法會切換相應引腳的邏輯信號