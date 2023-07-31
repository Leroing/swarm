#!/usr/bin/env python
import socket
import numpy as np
from crazyflie_py import *
import rclpy
from rclpy.node import Node
from rclpy.callback_groups import ReentrantCallbackGroup
from tf2_ros import TransformListener, Buffer
from tf2_ros import LookupException, ConnectivityException, ExtrapolationException

class tracker(Node):
    def __init__(self):
        super().__init__('tf2_listener')
        self.tf_buffer = Buffer()
        self.tf_listener = TransformListener(self.tf_buffer, self)

        # Create a timer callback
        callback_group = ReentrantCallbackGroup()
        self.timer = self.create_timer(5, self.timer_callback, callback_group=callback_group)

    def timer_callback(self):
        try:
            self.get_transform('cf1', 'world')
        except (LookupException, ConnectivityException, ExtrapolationException) as e:
            self.get_logger().info('Exception: %s' % e)

    def get_transform(self, target_frame, source_frame):
        trans = self.tf_buffer.lookup_transform(target_frame, source_frame, rclpy.time.Time())
        print(f"Position: {trans.transform.translation}, Rotation: {trans.transform.rotation}")


def main():
    rclpy.init()
    node = tracker()
    rclpy.spin(node)

if __name__ == "__main__":
    main()