import 'package:smart_ahwa_manager/models/order.dart';

class OrderPriceCalculator {
  static double calculatePrice(Order order) {
    double price = order.product.price;
    if (order.product.extras != null) {
      for (var extra in order.product.extras!) {
        price += extra.price;
      }
    }
    return price;
  }
}
