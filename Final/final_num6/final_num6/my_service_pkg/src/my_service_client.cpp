#include "rclcpp/rclcpp.hpp"
#include "my_service_pkg/srv/my_service.hpp"

int main(int argc, char** argv)
{
  rclcpp::init(argc, argv);
  auto node = rclcpp::Node::make_shared("my_service_client");

  auto client = node->create_client<my_service_pkg::srv::MyService>("my_service");

  while (!client->wait_for_service(std::chrono::seconds(1))) {
    if (!rclcpp::ok()) {
      RCLCPP_ERROR(rclcpp::get_logger("rclcpp"), "Interrupted while waiting for the service. Exiting.");
      return 0;
    }
    RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "Service not available. Waiting...");
  }

  auto request = std::make_shared<my_service_pkg::srv::MyService::Request>();
  request->message = "Hello, Service";

  auto future = client->async_send_request
