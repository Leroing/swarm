import os
import yaml
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    teleop_params = os.path.join(
            get_package_share_directory('crazyflie'),
            'config',
            'teleop.yaml')

    return LaunchDescription([
        Node(
            package='crazyflie',
            executable='teleop',
            name='teleop',
            parameters=[teleop_params]
        ),
        Node(
            package='joy',
            executable='joy_node',
            name='joy_node'
        ),
        Node(
            package='crazyflie',
            executable='crazyflie_server',
            name='crazyflie_server'
        )
    ])
