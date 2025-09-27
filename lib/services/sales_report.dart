import 'package:smart_ahwa_manager_dart/helpers/calculate_total_sales.dart';
import 'package:smart_ahwa_manager_dart/helpers/get_top_selling_item.dart';
import 'package:smart_ahwa_manager_dart/models/report.dart';
import 'package:smart_ahwa_manager_dart/repositories/order_repository.dart';

class SalesReportGenerator {
  final OrderRepository orderRepository;

  SalesReportGenerator({required this.orderRepository});

  SalesReport generateReport() {
    double totalSales = calculateTotalSales(orderRepository);
    String topProduct = getTopSellingDrink(orderRepository);
    return SalesReport(topSellingProduct: topProduct, totalSales: totalSales);
  }
}
