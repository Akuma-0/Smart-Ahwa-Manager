import 'package:smart_ahwa_manager_dart/models/extra.dart';

abstract class Product {
  late double price;
    List<Extra>? extras;
  Product({this.extras});
}
