ros2 param set /turtlesim background_r 255
ros2 param set /turtlesim background_g 0
ros2 param set /turtlesim background_b 0
sleep 4
ros2 service call /kill turtlesim/srv/Kill "name: 'turtle1'"
sleep 4
ros2 service call /spawn turtlesim/srv/Spawn "{x: 8, y: 5, theta: 1.5708, name: 'rose'}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 8, y: 8, theta: 1.5708}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 2, y: 8, theta: 3.1416}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 2, y: 2, theta: -1.5708}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 8, y: 2, theta: 0}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 8, y: 5, theta: 1.5708}"
sleep 4
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 2, y: 5, theta: 3.1416}"
sleep 4
