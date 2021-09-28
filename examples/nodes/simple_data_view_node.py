# import NodeBase class
from mh_en_exec.nodes import NodeBase
# import string output port
from mh_en_exec.nodes.ports import StringNodeOutput
# import string port view
from mh_en_exec.nodes.views import NodeStringView


# create new node class
class SimpleDataViewNode(NodeBase):
  # set a display name
  NODE_NAME = 'Simple Data View'

  # output port variable
  text = StringNodeOutput()

  # output port view
  text_view = NodeStringView('text')
