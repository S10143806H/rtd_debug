??          ?               <  %   =  4   c  G   ?  (   ?  E   	  3   O  X   ?  W   ?  R   4  )   ?  K   ?  E   ?  H   C  >   ?  o   ?  @   ;  .   |    ?  #   +  2   O  C   ?  :   ?  6     +   8  U   d  W   ?  Q   	  &   d	  ?   ?	  :   ?	  6   
  1   =
  m   o
  7   ?
  :      **Timer(**\ *unit*\ [optional]\ **)** **Timer.reload (**\ *duration_us*\ [required]\ **)** **Timer.start(**\ *microseconds*\ [required], *type*\ [required]\ **)** **duration_us**: duration in microsecond **microseconds**: number of microseconds interval, must be an integer **type**: either Timer. PERIODICAL or Timer.ONESHOT :raw-html:`<p style="color:#0070C0; font-size:26px">` **API Documents** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Constructors** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Methods** :raw-html:`</p>` Create a timer object with given unit ID. This method will de-initialize the Timer object created and stop the timer. This method will reload the timer with given duration in microsecond. This method will return the current timer tick in Gtimer clock(0~32768). This method will return the current timer tick in microsecond. This method will start a given type of timer, either one-shot or periodical, at duration of given microseconds. This method will stop the timer and its timer interrupt handler. ``unit``: can be 1 / 2 / 3 for timer 1 / 2 / 3 Project-Id-Version: AmebaDocs EPUB3
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
 **Timer(**\ *unit*\ [選填]\ **)** **Timer.reload (**\ *duration_us*\ [必填]\ **)** **Timer.start(**\ *microseconds*\ [必填], *type*\ [必填]\ **)** **duration_us**: 時間長度，計量單位是微秒us。 **microseconds**: 微秒數間隔，必須是整數。 **type**: 單次，或週期性定時器。 :raw-html:`<p style="color:#0070C0; font-size:26px">` **API 文档** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **構造函數** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **方法** :raw-html:`</p>` 用特定ID創建一個定時器對象 此方法將解除創建的定時器對象並停止定時器。 此方法將用時間長度(us)來重新設定定時器。 此方法將返還定時器的當前ticks (0~32768)。 此方法將返還定時器的當前微秒(us)。 此方法將在給定的微秒時間內啟動給定類型的定時器， 無論是單次還是周期性的。 此方法將停止定時器時鐘和其中斷handler。 ``unit``: 可以是 1 / 2 / 3， 對應定時器 1 / 2 / 3 