#include "rclcpp/rclcpp.hpp"
#include "my_service_pkg/srv/my_service.hpp"

void serviceCallback(const std::shared_ptr<my_service_pkg::srv::MyService::Request> request,
                     std::shared_ptr<my_service_pkg::srv::MyService::Response> response)
{
  response->response = request->message;
  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "Received request: %s", request->message.c_str());
}

int main(int argc, char** argv)
{
  rclcpp::init(argc, argv);
  auto node = rclcpp::Node::make_shared("my_service_server");

  auto service = node->create_service<my_service_pkg::srv::MyService>("my_service", &serviceCallback);

  rclcpp::spin(node);
  rclcpp::shutdown();

  return 0;
}
