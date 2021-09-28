# import NodeBase class
from mh_en_exec.nodes import NodeBase
# import string output port
from mh_en_exec.nodes.ports import StringNodeOutput


# create new node class
class SimpleDataNode(NodeBase):
  # set a display name
  NODE_NAME = 'Simple Data'

  # output port variable
  text = StringNodeOutput()

  # node execution function
  def perform(self):
    return ('Hello World',)
