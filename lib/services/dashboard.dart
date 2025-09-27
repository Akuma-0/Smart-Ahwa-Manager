import 'package:smart_ahwa_manager_dart/models/order.dart';
import 'package:smart_ahwa_manager_dart/repositories/order_repository.dart';

class Dashboard extends OrderRepository {
  List<Order> pendingOrders = [];
  List<Order> completedOrders = [];

  @override
  void addOrder(Order order) {
    pendingOrders.add(order);
  }

  @override
  List<Order> getCompletedOrders() {
    return completedOrders;
  }

  @override
  List<Order> getPendingOrders() {
    return pendingOrders;
  }

  @override
  void markOrderAsCompleted(int orderId) {
    var order = pendingOrders[orderId];
    pendingOrders.removeAt(orderId);
    completedOrders.add(order);
  }
}
