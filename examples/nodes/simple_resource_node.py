import os
# import opencv module
import cv2
# import NodeBase class
from mh_en_exec.nodes import NodeBase
# import image output port
from mh_en_exec.nodes.ports import ImageNodeOutput


# create new node class
class SimpleResourceNode(NodeBase):
  # image file path
  FILE_PATH = 'nodes/sample.png'
  # set a display name
  NODE_NAME = 'Simple Resource Data'

  # output port variable
  image = ImageNodeOutput()

  # node execution function
  def perform(self):
    if not os.path.exists(self.FILE_PATH):
      return None
    image = cv2.imread(self.FILE_PATH)
    return (image,)
