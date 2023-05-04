# :car: 모빌리티 서비스 수업


:link:[공부 내용 정리 노션](https://wise-fibre-4d5.notion.site/8a4dfc0b55a04da38fa06f44e36ade61)


## Bash Script
```
sudo apt update
sudp apt upgrade
sudo apt install vim

```

## ROS2 turtlesim
```

$ros2 run turtlesim turtlesim_node
$ros2 run turtlesim turtle_teleop_key

```

## Build

```
$cd ~/robot_ws/src
$colcon build --symlink-install --packages-select my_first_ros_rclcpp_pkg

...

Summary: 1 package finished [2.4s]
```

### 특정 패키지 첫 빌드 때

```
. ~/robot_ws/install/local_setup.bash
```

## Run my_first_ros_rclcpp_pkg package

```
$ros2 run my_first_ros_rclcpp_pkg helloworld_subscriber
$ros2 run my_first_ros_rclcpp_pkg helloworld_publisher
```

## 토픽, 서비스, 액션 인터페이스

```
$ cw
$ cbp msg_srv_action_interface_example
```
