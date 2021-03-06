??          ?               ?  V   ?  ;   ?  <   0  <   m  2   ?  @   ?  '     ,   F  -   s  5   ?  5   ?  S     U   a     ?  X   ?  W   .  R   ?  ?   ?  p   ?  ?     C   ?  U   ?  ]   5    ?  G   
  :   [
  -   ?
  -   ?
  %   ?
  ?     "   X  *   {  +   ?  3   ?  3     O   :  Q   ?  -   ?  U   
  W   `  Q   ?  ?   
  S   ?  ?   4  *   ?  O   ?  H   <   (year, month, date, hour, minute, second, weekday[0-6 for Mon to Sun], yearday[1-366]) **end_ticks**: millisecond counter obtained from ticks_ms() **microseconds**: number of microseconds, must be an integer **milliseconds**: number of milliseconds, must be an integer **seconds**: number of seconds, must be an integer **starting_ticks**: millisecond counter obtained from ticks_ms() **ticks_added**: number of ticks to add **time.mktime(**\ *tuple*\ [required]\ **)** **time.sleep(**\ *seconds*\ [required]\ **)** **time.sleep_ms(**\ *milliseconds*\ [required]\ **)** **time.sleep_us(**\ *microseconds*\ [required]\ **)** **time.ticks_add(**\ *starting_ticks*\ [required], *ticks_added*\ [required]\ **)** **time.ticks_diff(**\ *end_ticks*\ [required], starting\_\ *ticks*\ [required]\ **)** **tuple**: an 8-element tuple :raw-html:`<p style="color:#0070C0; font-size:26px">` **API Documents** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Constructors** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Methods** :raw-html:`</p>` This is inverse function of localtime. Its argument is a full 8-tuple which expresses a time as per localtime. It returns an integer which is the number of seconds since Jan 1, 2000. This method perform subtraction on parameters given and return the difference of end_ticks minus starting_ticks. This method returns an increasing millisecond counter with an arbitrary reference point. Normally used together with **ticks_add()** and **ticks_diff()** This method will return RTC’s local time in the following format, This method will return the total number of seconds elapsed since Epoch (1970-01-01). This method will stop the microcontroller from what it is doing and delay for the given time. Project-Id-Version: AmebaDocs EPUB3
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
 (年, 月, 日, 時, 分, 秒, 周[0-6] 週一到週日, 年[1-366])。 **end_ticks**: 從 ``ticks_ms()`` 拿到的毫秒數時間 **microseconds**: 微秒數，必須是整數 **milliseconds**: 毫秒數，必須是整數 **seconds**: 秒數，必須是整數 **starting_ticks**: 從 ``ticks_ms()`` 拿到的毫秒數時間 **ticks_added**: 要增加的ticks **time.mktime(**\ *tuple*\ [必填]\ **)** **time.sleep(**\ *seconds*\ [必填]\ **)** **time.sleep_ms(**\ *milliseconds*\ [必填]\ **)** **time.sleep_us(**\ *microseconds*\ [必填]\ **)** **time.ticks_add(**\ *starting_ticks*\ [必填], *ticks_added*\ [必填]\ **)** **time.ticks_diff(**\ *end_ticks*\ [必填], starting\_\ *ticks*\ [必填]\ **)** **tuple**: 一個來表達的完整8項元組 :raw-html:`<p style="color:#0070C0; font-size:26px">` **API 文档** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **構造函數** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **方法** :raw-html:`</p>` 此方法的功能相反於 ``time.localtime()``。它的參數是一個按照 ``time.localtime()`` 來表達的完整8項元組。它會返還一個整數，此整數是從2000年一月一日到現在的秒數。 此方法將會返還 ``end_ticks`` 時間和 ``starting_ticks`` 時間的差值。 此方法將會返還一個遞增的毫秒數，參考點可以昰任意時間。通常和 ``ticks_add()``, ``ticks_diff()`` 一起使用。 此方法將會返還RTC的本地時間。 此方法將會返還一個秒數，此秒數是從(1970-01-01) 開始計算。 此方法將會用既定的時間，延遲正在工作的微控制器。 