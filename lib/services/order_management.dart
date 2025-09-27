import 'package:smart_ahwa_manager_dart/models/order.dart';
import 'package:smart_ahwa_manager_dart/repositories/order_repository.dart';

class OrderManagement {
final OrderRepository _orderRepository;

  OrderManagement(this._orderRepository);

  void addOrder(Order order) {
    _orderRepository.addOrder(order);
  }

  void markOrderAsCompleted(int orderId) {
    _orderRepository.markOrderAsCompleted(orderId);
  }
}
