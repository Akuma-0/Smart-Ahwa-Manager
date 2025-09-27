import 'package:smart_ahwa_manager_dart/helpers/get_top_selling_item.dart';
import 'package:smart_ahwa_manager_dart/helpers/print_orders_list.dart';
import 'package:smart_ahwa_manager_dart/models/drinks/coffee.dart';
import 'package:smart_ahwa_manager_dart/models/drinks/hibiscus_tea.dart';
import 'package:smart_ahwa_manager_dart/models/drinks/tea.dart';
import 'package:smart_ahwa_manager_dart/models/extra.dart';
import 'package:smart_ahwa_manager_dart/models/extras/lemon.dart';
import 'package:smart_ahwa_manager_dart/models/extras/milk.dart';
import 'package:smart_ahwa_manager_dart/models/extras/mint.dart';
import 'package:smart_ahwa_manager_dart/models/extras/sugar.dart';
import 'package:smart_ahwa_manager_dart/models/order.dart';
import 'package:smart_ahwa_manager_dart/repositories/order_repository.dart';
import 'package:smart_ahwa_manager_dart/services/dashboard.dart';
import 'dart:io';

void main(List<String> arguments) {
  OrderRepository orderRepo = Dashboard();
  bool isRunning = true;
  while (isRunning) {
    print(
      'please select an option:\n 1. Add an order\n 2. View pending orders\n 3. View completed orders\n 4. Mark order as completed\n 5. Get top selling drink\n 6. Exit',
    );
    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        // Add an order
        var order = addOrder();
        orderRepo.addOrder(order);
        print('Order added successfully');
        break;
      case 2:
        // View pending orders
        printOrdersList(orderRepo.getPendingOrders());
        break;
      case 3:
        // View completed orders
        printOrdersList(orderRepo.getCompletedOrders());
        break;
      case 4:
        // Mark order as completed
        printOrdersList(orderRepo.getPendingOrders());
        print('Enter order ID to mark as completed:');
        var orderId = int.parse(stdin.readLineSync()!);
        orderRepo.markOrderAsCompleted(orderId - 1);
        print('Order marked as completed');
        break;
      case 5:
        // Get top selling drink
        var topDrink = getTopSellingDrink(orderRepo);
        print('Top Selling Drink: $topDrink');
        break;
      case 6:
        // Exit
        print('Exiting...');
        isRunning = false;
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

Order addOrder() {
  print('Enter customer name:');
  var customerName = stdin.readLineSync();
  var id = DateTime.now().millisecondsSinceEpoch.toString();
  print('please chose a drink type:\n 1. coffee\n 2. Tea\n 3. hibiscus tea\n');
  var choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      // Add coffee order
      var extras = addExtras();
      return Order(
        product: Coffee(extras: extras),
        customerName: customerName ?? '',
        id: id,
      );
    case 2:
      // Add tea order
      var extras = addExtras();
      return Order(
        product: Tea(extras: extras),
        customerName: customerName ?? '',
        id: id,
      );
    case 3:
      // Add hibiscus tea order
      var extras = addExtras();
      return Order(
        product: HibiscusTea(extras: extras),
        customerName: customerName ?? '',
        id: id,
      );
    default:
      print('Invalid choice. Please try again.');
      return addOrder();
  }
}

List<Extra> addExtras() {
  List<Extra> extras = [];
  print(
    'please chose an extra:\n 1. sugar\n 2. milk\n 3. lemon\n 4. honey\n 5. no more extras\n',
  );
  var choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      extras.add(Sugar());
      addExtras();
      break;
    case 2:
      extras.add(Milk());
      addExtras();
      break;
    case 3:
      extras.add(Lemon());
      addExtras();
      break;
    case 4:
      extras.add(Mint());
      addExtras();
      break;
    case 5:
      return extras;
    default:
      print('Invalid choice. Please try again.');
      addExtras();
  }
  return extras;
}
