ros2 service call /kill turtlesim/srv/Kill "name: 'turtle1'"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2.5, y: 2.5, theta: 2.3562, name: 'lisa'}"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2.5, y: 2.5, theta: 2.3562, name: 'jisoo'}"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2.5, y: 2.5, theta: 2.3562, name: 'jennie'}"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2.5, y: 2.5, theta: 2.3562, name: 'rose'}"
sleep 7
ros2 topic pub --once /lisa/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 19.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 5
ros2 topic pub --once /jisoo/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 15.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 5
ros2 topic pub --once /jennie/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 11.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 5
ros2 topic pub --once /rose/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 7.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -6.2819}}"
sleep 5
