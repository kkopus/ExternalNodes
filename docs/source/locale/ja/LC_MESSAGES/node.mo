Þ                ì       0     1  ;   Ñ  3     #   A  <   e     ¢  F   ´     û       Ë     ±   Û  J     Q  Ø  È   *  K   ó  ?   ?  6     N   ¶       `   !  	          ¹   £  ¹   ]	  ^   
                     	      
                               *first value of the action node return values is a bool value. If `True` `out_on_success` port will be called, if `False` `out_on_failure` port will be called* In case of action node: `bool, tuple[{output port values}]` In case of data node: `tuple[{output port values}]` In case of function is not overrode Input port values will be set as arguments of this function. Node Base Classes Output port values need to be set as a return values of this function. Raises Return type: The ActionNodeBase class is the base class for the action nodes To create external action node, need to inherit this class and implement :func:`perform <mh_en_exec.nodes.ActionNodeBase.perform>` function The NodeBase class is the base class for the nodes To create external node, need to inherit this class and implement :func:`perform <mh_en_exec.nodes.NodeBase.perform>` function This function is called when a node is executed on the Machine Heads side. Project-Id-Version: Machine Heads External Nodes
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2021-09-08 14:20+0900
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 2.4.1
 *ã¢ã¯ã·ã§ã³ãã¼ãã®æ»ãå¤ã®æåã®å¤ã¯ãboolå¤ã§ããTrue ã®å ´åã¯ `out_on_success` ãã¼ããå¼ã°ããFalse ã®å ´åã¯ `out_on_failure` ãã¼ããå¼ã°ãã¾ã*ã ã¢ã¯ã·ã§ã³ãã¼ãã®å ´åã¯ `bool, tuple[{åºåãã¼ãã®å¤}]` ãã¼ã¿ãã¼ãã®å ´åã¯ `tuple[{åºåãã¼ãã®å¤}]` æ©è½ããªã¼ãã¼ã­ã¼ãããã¦ããªãå ´å å¥åãã¼ãã®å¤ã¯ããã®é¢æ°ã®å¼æ°ã¨ãã¦è¨­å®ããã¾ãã ãã¼ããã¼ã¹ã¯ã©ã¹ ãã®é¢æ°ã®æ»ãå¤ã¨ãã¦ãåºåãã¼ãã®å¤ãè¨­å®ããå¿è¦ãããã¾ãã ã¬ã¤ãº ãªã¿ã¼ã³ã¿ã¤ã: NodeBaseã¯ã©ã¹ã¯ããã¼ãã®åºæ¬ã¯ã©ã¹ã§ãã å¤é¨ãã¼ããä½æããã«ã¯ããã®ã¯ã©ã¹ãç¶æ¿ãã `perform` é¢æ°ãå®è£ããå¿è¦ãããã¾ãã NodeBaseã¯ã©ã¹ã¯ããã¼ãã®åºæ¬ã¯ã©ã¹ã§ãã å¤é¨ãã¼ããä½æããã«ã¯ããã®ã¯ã©ã¹ãç¶æ¿ãã `perform` é¢æ°ãå®è£ããå¿è¦ãããã¾ãã ãã®é¢æ°ã¯ãMachine Headså´ã§ãã¼ããå®è¡ãããéã«å¼ã³åºããã¾ãã 