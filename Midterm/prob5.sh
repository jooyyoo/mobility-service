ros2 service call /kill turtlesim/srv/Kill "name: 'turtle1'"
sleep 2
ros2 service call /spawn turtlesim/srv/Spawn "{x: 2, y: 5.51, theta: 1.57, name: 'lisa'}"
sleep 2
ros2 service call /lisa/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 8, y: 5.51, theta: 1.57}"
sleep 2
ros2 topic pub --once /lisa/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 17.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 6.2819}}"
