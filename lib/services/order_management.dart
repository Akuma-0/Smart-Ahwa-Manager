import 'package:smart_ahwa_manager/models/order.dart';
import 'package:smart_ahwa_manager/repositories/order_repository.dart';

class OrderManagement {
final OrderRepository _orderRepository;

  OrderManagement(this._orderRepository);

  void addOrder(Order order) {
    _orderRepository.addOrder(order);
  }

  void markOrderAsCompleted(Order order) {
    _orderRepository.markOrderAsCompleted(order);
  }
}
