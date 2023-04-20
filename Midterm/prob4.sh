ros2 service call /kill turtlesim/srv/Kill "name: 'turtle1'"
sleep 3
ros2 service call /spawn turtlesim/srv/Spawn "{x: 10, y: 10, theta: 0, name: 'rose'}"
sleep 3
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 1, y: 1, theta: 0}"
sleep 3
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 1, y: 10, theta: 0}"
sleep 3
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 10, y: 1, theta: 0}"
sleep 3
ros2 service call /rose/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 10, y: 10, theta: 0}"
sleep 3
