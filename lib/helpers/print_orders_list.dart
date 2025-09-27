import 'package:smart_ahwa_manager_dart/models/order.dart';

void printOrdersList(List<Order> orders) {
  if (orders.isEmpty) {
    print('No orders available.');
    return;
  }
  print('Pending Orders:');
  for (var index = 1; index <= orders.length; index++) {
    var order = orders[index-1];
    print(
      '$index : Customer Name: ${order.customerName} - Product Name: ${order.product.runtimeType.toString()} - Extras: ${order.product.extras!.isEmpty ? "[]" : order.product.extras!.map((e) => e.name).join(', ')} \n',
    );
  }
}
