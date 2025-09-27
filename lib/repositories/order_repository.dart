import 'package:smart_ahwa_manager_dart/models/order.dart';

abstract class OrderRepository {
  List<Order> getCompletedOrders();
  List<Order> getPendingOrders();
  void addOrder(Order order);
  void markOrderAsCompleted(int orderId);
}
