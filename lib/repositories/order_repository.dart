import 'package:smart_ahwa_manager/models/order.dart';

abstract class OrderRepository {
  List<Order> getCompletedOrders();
  List<Order> getPendingOrders();
  void addOrder(Order order);
  void markOrderAsCompleted(Order order);
}
