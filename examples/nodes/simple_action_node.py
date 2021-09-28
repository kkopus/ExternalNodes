# import ActionNodeBase class
from mh_en_exec.nodes import ActionNodeBase
# import integer input port
from mh_en_exec.nodes.ports import IntegerNodeInput
# import integer output port
from mh_en_exec.nodes.ports import IntegerNodeOutput

# create new node class
class SimpleActionNode(ActionNodeBase):
  # set a display name
  NODE_NAME = 'Simple Action'

  # input port variables
  a = IntegerNodeInput()
  b = IntegerNodeInput()

  # output port variable
  c = IntegerNodeOutput()

  # node execution function
  def perform(self, a, b):
    return True, (a + b,)