import 'package:smart_ahwa_manager_dart/repositories/order_repository.dart';
import 'package:smart_ahwa_manager_dart/services/order_price_calculator.dart';

double calculateTotalSales(OrderRepository orderRepository) {
  double total = 0;
  for (var order in orderRepository.getCompletedOrders()) {
    total += OrderPriceCalculator.calculatePrice(order);
  }
  return total;
}
