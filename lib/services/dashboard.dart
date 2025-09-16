import 'package:smart_ahwa_manager/models/order.dart';
import 'package:smart_ahwa_manager/repositories/order_repository.dart';

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
  void markOrderAsCompleted(Order order) {
    pendingOrders.remove(order);
    order.isCompleted = true;
    completedOrders.add(order);
  }
}
