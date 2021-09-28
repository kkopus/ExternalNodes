# import machine heads external node module
import mh_en_exec

# import external nodes
from nodes.simple_action_node import SimpleActionNode
from nodes.simple_data_node import SimpleDataNode
from nodes.simple_data_view_node import SimpleDataViewNode
from nodes.simple_resource_node import SimpleResourceNode

try:
  # execute external node server
  mh_en_exec.exec([SimpleActionNode, SimpleDataNode, SimpleDataViewNode, SimpleResourceNode])
except KeyboardInterrupt:
  pass
