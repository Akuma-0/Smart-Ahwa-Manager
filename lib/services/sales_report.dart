import 'package:smart_ahwa_manager/helpers/calculate_total_sales.dart';
import 'package:smart_ahwa_manager/helpers/get_top_selling_ite.dart';
import 'package:smart_ahwa_manager/models/report.dart';
import 'package:smart_ahwa_manager/repositories/order_repository.dart';

class SalesReportGenerator {
  final OrderRepository orderRepository;

  SalesReportGenerator({required this.orderRepository});

  SalesReport generateReport() {
    double totalSales = calculateTotalSales(orderRepository);
    String topProduct = getTopSellingDrink(orderRepository);
    return SalesReport(topSellingProduct: topProduct, totalSales: totalSales);
  }
}
