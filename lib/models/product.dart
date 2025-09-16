import 'package:smart_ahwa_manager/models/extra.dart';

abstract class Product {
  late double price;
    List<Extra>? extras;
  Product({this.extras});
}
