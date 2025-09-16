import 'package:smart_ahwa_manager/repositories/order_repository.dart';

String getTopSellingDrink(OrderRepository orderRepository) {
  Map<String, int> drinkCounts = {};
  for (var order in orderRepository.getCompletedOrders()) {
    String drinkType = order.product.runtimeType.toString();
    drinkCounts[drinkType] = (drinkCounts[drinkType] ?? 0) + 1;
  }
  if (drinkCounts.isEmpty) {
    return "No sales yet";
  }
  String topDrink = drinkCounts.entries
      .reduce((a, b) => a.value > b.value ? a : b)
      .key;
  return topDrink;
}
