import 'package:smart_ahwa_manager/repositories/order_repository.dart';
import 'package:smart_ahwa_manager/services/order_price_calculator.dart';

double calculateTotalSales(OrderRepository orderRepository) {
  double total = 0;
  for (var order in orderRepository.getCompletedOrders()) {
    total += OrderPriceCalculator.calculatePrice(order);
  }
  return total;
}
