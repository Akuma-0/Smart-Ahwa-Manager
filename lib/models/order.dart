import 'package:smart_ahwa_manager/models/product.dart';

class Order {
  final String id;
  final Product product;
  final String customerName;
  bool isCompleted = false;

  Order({required this.customerName, required this.id, required this.product});
  set completeOrder(bool status) {
    isCompleted = status;
  }
}
