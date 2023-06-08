ros2 service call /kill turtlesim/srv/Kill "name: 'turtle1'"
sleep 4
ros2 service call /spawn turtlesim/srv/Spawn "{x: 7, y: 7, theta: 2.3562, name: 'rose'}"
sleep 4
ros2 service call /spawn turtlesim/srv/Spawn "{x: 3, y: 3, theta: -0.7854, name: 'jisoo'}"
sleep 4
ros2 topic pub --once /rose/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 10.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 6.2819}}"
sleep 4
ros2 topic pub --once /jisoo/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 10.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 6.2819}}"
