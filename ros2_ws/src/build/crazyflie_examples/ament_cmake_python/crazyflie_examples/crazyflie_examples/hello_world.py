#!/usr/bin/env python
import socket
import numpy as np
from crazyflie_py import *
import rclpy
from rclpy.node import Node
from tf2_ros import TransformListener, Buffer

class MyNode(Node):
    def __init__(self):
        super().__init__('tf2_listener')
        self.tf_buffer = Buffer()
        self.tf_listener = TransformListener(self.tf_buffer, self)

    def get_transform(self, target_frame, source_frame):
        try:
            trans = self.tf_buffer.lookup_transform(target_frame, source_frame, rclpy.time.Time())
            print(f"Position: {trans.transform.translation}, Rotation: {trans.transform.rotation}")
        except (tf2.LookupException, tf2.ConnectivityException, tf2.ExtrapolationException) as e:
            self.get_logger().info(f'Exception: {str(e)}')



def main():
    Z = 1.
    
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    allcfs = swarm.allcfs

    while(True):
        print("gay")


"""
a
    allcfs.takeoff(targetHeight=Z, duration=2. + Z)
    timeHelper.sleep(.5)
    for cf in allcfs.crazyflies:
            print(cf)
            pos = np.array([0, 0, Z])
            #pos = np.array[0, 0, Z]
            #coordinates, yaw(radians), time
            cf.goTo(pos, 0., 1.5)
            #timeHelper.sleep(1)
            #pos2 = np.array(1, 1, Z)
            #cf.goTo(pos2, 0., 1.5)

    #print("press button to continue...")
    #swarm.input.waitUntilButtonPressed()
    timeHelper.sleep(1.)
    allcfs.land(targetHeight=0.02, duration=1.0+Z)
    #timeHelper.sleep(1.0+Z)
"""

if __name__ == "__main__":
    main()