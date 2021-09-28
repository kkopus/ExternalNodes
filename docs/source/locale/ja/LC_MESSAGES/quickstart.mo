Þ    /        C           =     9   W  G     :   Ù  %     }   :     ¸  S  ?  9        Í     Z  `   ì     M	     b	     u	     	  #   ¦	     Ê	  ½  è	  `   ¦  %        -     °  Ä   C  p     =   y  Ä  ·  µ   |  ¹   2  &   ì  ,     Ô   @  8     /   N  ;   ~  
   º     Å     Ô     í                @  u   Z     Ð     ^  "   ì  Q    O   a  M   ±  W   ÿ  N   W  Y   ¦        ²       M  S   à  º   4  ®   ï       !   '     I  6   e       =   ¸  F   ö  J  =      #  ?   $  ¨   K$  ¨   ô$    %     ­&  o   ='  >  ­'    ì)  è   ð*  H   Ù+  K   ",  ?  n,  ]   ®-  H   .  Y   U.     ¯.     È.  6   ä.  0   /  0   L/  F   }/  0   Ä/  u   õ/  ¼   k0     (1  9   ¿1              $   )                                     ,                                  -   !   '       %      "         *             &         
          +       	   (         .   /                             #                          ![Simple Action Node Image](img/nodes/simple_action_node.png) ![Simple Data Node Image](img/nodes/simple_data_node.png) ![Simple Data Node With View](img/nodes/simple_data_node_with_view.png) A minimal server running script looks something like this: After that, node will look like this: Also we trying to catch `KeyboardInterrupt` exception in order to be able stop external nodes execution by pressing `Ctrl+C`. And add new class variable called `text`, an instance of the {class}`StringNodeOutput <mh_en_exec.nodes.ports.StringNodeOutput>` class And as always need to override {func}`perform <mh_en_exec.nodes.NodeBase.perform>` function to make some operations, but this time we will receive input port values as arguments of the {func}`perform <mh_en_exec.nodes.NodeBase.perform>` function and return values will be not just tuple of output values, but also result of node execution. And only after that need to add our `text_view` variable. And, finally let's override {func}`perform <mh_en_exec.nodes.NodeBase.perform>` function to be able return some value on the node execution. As the last time, we start by creating a class, but this time we need to inherit {class}`ActionNodeBase <mh_en_exec.nodes.ActionNodeBase>` class. But first, need to import {class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>` class. Creating action node Creating data node Creating data node with view Creating node class Final class code will be like this: Final code will be like this: First of all, need to decide the type of the node.<br> Machine Heads have two type of nodes: {class}`action node <mh_en_exec.nodes.ActionNodeBase>` and {class}`data node <mh_en_exec.nodes.NodeBase>`.<br> The difference is that an {class}`action node <mh_en_exec.nodes.ActionNodeBase>` provides some operation when executed, while a {class}`data node <mh_en_exec.nodes.NodeBase>` provides data that can be used on an {class}`action node <mh_en_exec.nodes.ActionNodeBase>`<br> In terms of node structure, an {class}`action node <mh_en_exec.nodes.ActionNodeBase>` has built-in "*in_action*" input port and "*out_on_success*" and "*out_on_failure*" output ports, and a data node has no built-in ports.<br> First we imported the Machine Heads External Node module {mod}`mh_en_exec <mh_en_exec>` as `mh`. First, let's create simple data node. If the function `perform` is not in the node class, then when the node is executed, the value of the ports will be returned as is. In order to do so, need to create class that will be inherited from {class}`NodeBase <mh_en_exec.nodes.NodeBase>`. It will be something like this. In the previous example, we made the port value hardcoded, but it is possible to make the port value set from the "Machine Heads" user interface. To do so, you need to use a [port view](views.md). In this case `SimpleDataNode` will give 'Hello World' string value through the `text` output port when executed. Let's first figure out how to start the external node server. Let's try adding a port view for the `text` port of our previous example class `SimpleDataNode`. To do this, need to add a new variable named `text_view`, an instance of the {class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>`, and link it to our `text` variable. To link, need to pass the name of the variable to which we want to link as the first argument of the {class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>` constructor. Next we imported custom node class called `FooNode`. For now, let's skip the details of creating the class, but if you want details see "[Creating node class](#creating-node-class)" Next, create ports. To do so, first, import {class}`IntegerNodeInput <mh_en_exec.nodes.ports.IntegerNodeInput>` and {class}`IntegerNodeOutput <mh_en_exec.nodes.ports.IntegerNodeOutput>` Next, let's create simple action node. Next, let's see how to create your own node. Next, need to add ports. For this `SimpleDataNode` class, let's create one string output port and name it as `text`.<br> To do so need to import {class}`StringNodeOutput <mh_en_exec.nodes.ports.StringNodeOutput>` Now using this code we can run the external node server. On "Machine Heads" node will be look like this: On "Machine Heads" this action node will be look like this: Quickstart Running Server Simple Action Node Image Simple Data Node Image Simple Data Node With View So final code will be like this: So what did that code do? The `perform` function has been removed since it is no longer necessary to return the port value through python code. Then we use {func}`exec() <mh_en_exec.exec>` function to execute server and wait until ends. As an argument we send list of the node classes. This time we will try to make the node add up the value of the input ports.<br> The formula for the operation will be as follows: `a + b = c` and create input and output ports. Project-Id-Version: Machine Heads External Nodes
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2021-09-22 16:22+0900
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 2.4.1
 ![ã·ã³ãã«ã¢ã¯ã·ã§ã³ãã¼ãç»å](img/nodes/simple_action_node.png) ![ã·ã³ãã«ãã¼ã¿ãã¼ãã¤ã¡ã¼ã¸](img/nodes/simple_data_node.png) ![ã·ã³ãã«ãã¼ã¿ãã¼ãã¤ã¡ã¼ã¸](img/nodes/simple_data_node_with_view.png) æå°éã®ãµã¼ãã¼å®è¡ã¹ã¯ãªããã¯æ¬¡ã®ãããªãã®ã§ãã "Machine Heads" ã§ã¯ããã®ã¢ã¯ã·ã§ã³ãã¼ãã¯ä»¥ä¸ã®ããã«ãªãã¾ã: ã¾ãã`Ctrl+C`ãæ¼ããã¨ã§å¤é¨ãã¼ãã®å®è¡ãåæ­¢ã§ããããã«ã`KeyboardInterrupt`ä¾å¤ã®ã­ã£ãããè©¦ã¿ã¦ãã¾ãã ããã¦ã{class}`StringNodeOutput <mh_en_exec.nodes.ports.StringNodeOutput>`ã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ã§ãã`text`ã¨ããæ°ããã¯ã©ã¹å¤æ°ãè¿½å ãã¾ãã ããã¦ããã¤ãã®ããã«{func}`perform <mh_en_exec.nodes.NodeBase.perform>`é¢æ°ããªã¼ãã¼ã©ã¤ããã¦ä½ããã®æä½ãè¡ãå¿è¦ãããã¾ãããä»åã¯{func}`perform <mh_en_exec.nodes.NodeBase.perform>`é¢æ°ã®å¼æ°ã¨ãã¦å¥åãã¼ãã®å¤ãåãåããæ»ãå¤ã¯åãªãåºåå¤ã®ã¿ãã«ã§ã¯ãªãããã¼ãã®å®è¡çµæãåãåãã¾ãã ããã¦ããã®å¾ã«ã`text_view`å¤æ°ãè¿½å ããå¿è¦ãããã¾ãã ããã¦ãæå¾ã«{func}`perform <mh_en_exec.nodes.NodeBase.perform>`é¢æ°ããªã¼ãã¼ã©ã¤ããã¦ããã¼ãå®è¡æã«ä½ããã®å¤ãè¿ããããã«ãã¾ãããã ååã¨åæ§ã«ã¯ã©ã¹ã®ä½æããå§ãã¾ãããä»åã¯{class}`ActionNodeBase <mh_en_exec.nodes.ActionNodeBase>`ã¯ã©ã¹ãç¶æ¿ããå¿è¦ãããã¾ãã ãã®åã«ã{class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>` ã¯ã©ã¹ãã¤ã³ãã¼ãããå¿è¦ãããã¾ãã ã¢ã¯ã·ã§ã³ãã¼ãã®ä½æ ãã¼ã¿ãã¼ãã®ä½æ ãã¥ã¼ãæã£ã¦ãããã¼ã¿ãã¼ãã®ä½æ ãã¼ãã¯ã©ã¹ã®ä½æ æçµçãªã¯ã©ã¹ã³ã¼ãã¯ãã®ããã«ãªãã¾ã: ãã®ãããæçµçãªã³ã¼ãã¯ä»¥ä¸ã®ããã«ãªãã¾ã: ã¾ãããã¼ãã®ç¨®é¡ãæ±ºããå¿è¦ãããã¾ãã<br> ãã·ã³ãããã«ã¯2ç¨®é¡ã®ãã¼ããããã¾ã:{class}`action node <mh_en_exec.nodes.ActionNodeBase>`ã¨{class}`data node <mh_en_exec.nodes.NodeBase>`ã§ãã<br> ãã®éãã¯ã{class}`action node <mh_en_exec.nodes.ActionNodeBase>`ã¯å®è¡ãããã¨ä½ããã®åä½ãæä¾ããã®ã«å¯¾ããä¸æ¹ã{class}`data node <mh_en_exec.nodes.NodeBase>`ã¯ã{class}`action node <mh_en_exec.nodes.ActionNodeBase>`ã§ä½¿ç¨ã§ãããã¼ã¿ãæä¾ãã¾ãã<br> ãã¼ãã®æ§é ã¨ãã¦ã¯ã{class}`action node <mh_en_exec. nodes.ActionNodeBase>`ã«ã¯ã"*in_action*"ã®å¥åãã¼ãã¨ "*out_on_success*"ã¨ "*out_on_failure*"ã®åºåãã¼ããçµã¿è¾¼ã¾ãã¦ããããã¼ã¿ãã¼ãã«ã¯ãã¼ããçµã¿è¾¼ã¾ãã¦ãã¾ããã ã¾ã Machine Heads External Node ã¢ã¸ã¥ã¼ã« {mod}`mh_en_exec <mh_en_exec>` ã `mh` ã¨ãã¦ã¤ã³ãã¼ããã¾ããã ã¾ããã·ã³ãã«ãªãã¼ã¿ãã¼ããä½æãã¾ãã ããï¼é¢æ°`perform`ããã¼ãã¯ã©ã¹ã«ãªããã°ï¼ãã¼ããå®è¡ãããã¨ãã«ï¼ãã¼ãã®å¤ããã®ã¾ã¾è¿ããããã¨ã«ãªãã¾ãã ãã®ããã«ã¯ã{class}`NodeBase <mh_en_exec.nodes.NodeBase>`ãç¶æ¿ããã¯ã©ã¹ãä½æããå¿è¦ãããã¾ããããã¯æ¬¡ã®ãããªãã®ã§ãã åè¿°ã®ä¾ã§ã¯ããã¼ãå¤ããã¼ãã³ã¼ãåãã¾ãããã"Machine Heads"ã®ã¦ã¼ã¶ã¼ã¤ã³ã¿ã¼ãã§ã¼ã¹ãããã¼ãå¤ã®è¨­å®ãè¡ããã¨ãå¯è½ã§ãã ãã®ããã«ã¯ã[port view](views.md)ãä½¿ç¨ããå¿è¦ãããã¾ãã ãã®å ´åã`SimpleDataNode`ãå®è¡ãããã¨ã`text`åºåãã¼ããéãã¦'Hello World'ã¨ããæå­åãåºåããã¾ãã ã¾ãã¯ãã¨ã¯ã¹ã¿ã¼ãã«ã»ãã¼ãã»ãµã¼ãã¼ãèµ·åããæ¹æ³ãèãã¦ã¿ã¾ãããã åã»ã©ã®ãµã³ãã«ã¯ã©ã¹ `SimpleDataNode` ã® `text` ãã¼ãã«ãã¼ããã¥ã¼ãè¿½å ãã¦ã¿ã¾ãããããã®ããã«ã¯ã{class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>` ã®ã¤ã³ã¹ã¿ã³ã¹ã§ãã `text_view` ã¨ããååã®æ°ããå¤æ°ãè¿½å ããããã `text` å¤æ°ã«ãªã³ã¯ãããå¿è¦ãããã¾ãããªã³ã¯ãããã«ã¯ã{class}`NodeStringView <mh_en_exec.nodes.views.NodeStringView>` ã®ã³ã³ã¹ãã©ã¯ã¿ã®ç¬¬ä¸å¼æ°ã«ããªã³ã¯ããããå¤æ°ã®ååãæ¸¡ãå¿è¦ãããã¾ãã æ¬¡ã«ã`FooNode`ã¨ããã«ã¹ã¿ã ãã¼ãã¯ã©ã¹ãã¤ã³ãã¼ããã¾ããä»ã®ã¨ãããã¯ã©ã¹ä½æã®è©³ç´°ã¯çç¥ãã¾ãããè©³ç´°ãç¥ãããæ¹ã¯ "[ãã¼ãã¯ã©ã¹ã®ä½æ](#creating-node-class)" ããè¦§ãã ããã æ¬¡ã«ãã¼ããä½æãã¾ãããã®ããã«ã¯ãã¾ã{class}`IntegerNodeInput <mh_en_exec.nodes.ports.IntegerNodeInput>`ã¨{class}`IntegerNodeOutput <mh_en_exec.nodes.ports.IntegerNodeOutput>`ãã¤ã³ãã¼ããã¾ãã æ¬¡ã«ãã·ã³ãã«ãªã¢ã¯ã·ã§ã³ãã¼ããä½ãã¾ãããã æ¬¡ã«ãç¬èªã®ãã¼ããä½æããæ¹æ³ãè¦ã¦ã¿ã¾ãããã æ¬¡ã«ããã¼ããè¿½å ããå¿è¦ãããã¾ãããã®`SimpleDataNode`ã¯ã©ã¹ã§ã¯ãæå­åã®åºåãã¼ããä¸ã¤ä½ããããã`text`ã¨åä»ãããã<br> ãã®ããã«ã¯ã{class}`StringNodeOutput <mh_en_exec.nodes.ports.StringNodeOutput>`ãã¤ã³ãã¼ãããå¿è¦ãããã¾ãã ãã®ã³ã¼ããä½¿ã£ã¦ãå¤é¨ã®ãã¼ããµã¼ããåãããã¨ãã§ãã¾ãã "Machine Heads"ãã¼ãã§ã¯ãä»¥ä¸ã®ããã«è¡¨ç¤ºããã¾ãã "Machine Heads" ã§ã¯ããã®ã¢ã¯ã·ã§ã³ãã¼ãã¯ä»¥ä¸ã®ããã«ãªãã¾ã: ã¯ã¤ãã¯ã¹ã¿ã¼ã ã©ã³ãã³ã°ãµã¼ãã¼ ã·ã³ãã«ãªã¢ã¯ã·ã§ã³ãã¼ãã®ã¤ã¡ã¼ã¸ ã·ã³ãã«ãªãã¼ã¿ãã¼ãã®ã¤ã¡ã¼ã¸ ã·ã³ãã«ãªãã¼ã¿ãã¼ãã®ã¤ã¡ã¼ã¸ ãã®ãããæçµçãªã³ã¼ãã¯ä»¥ä¸ã®ããã«ãªãã¾ã: ã§ã¯ããã®ã³ã¼ãã¯ä½ãããã®ãï¼ pythonã³ã¼ãã§ãã¼ãã®å¤ãè¿ãå¿è¦ããªããªã£ãããã`perform`é¢æ°ãåé¤ããã¾ããã ããã¦ã{func}`exec() <mh_en_exec.exec>`é¢æ°ãä½¿ã£ã¦ãµã¼ãã¼ãå®è¡ããçµäºããã¾ã§å¾ã¡ã¾ããå¼æ°ã¨ãã¦ããã¼ãã¯ã©ã¹ã®ãªã¹ããéãã¾ãã ä»åº¦ã¯ããã¼ããå¥åãã¼ãã®å¤ãå ç®ããããã«ãã¦ã¿ã¾ãããã<br> æ¼ç®å¼ã¯æ¬¡ã®ããã«ãªãã¾ã: `a + b = c` ã¨å¥åãã¼ãã¨åºåãã¼ããä½æãã¾ãã 