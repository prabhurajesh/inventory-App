import 'package:login/models/productList.dart';

class ProductData {
  String value1;
  String value2;
  String value3;
  String value4;
  String value5;

  ProductData._(
      {this.value1, this.value2, this.value3, this.value4, this.value5});
//ProductData productData;
  factory ProductData(
      {String value1,
      String value2,
      String value3,
      String value4,
      String value5}) {
    ProductData productData = ProductData._(
        value1: value1,
        value2: value2,
        value3: value3,
        value4: value4,
        value5: value5);
    print("here => ${ProductList.list.length}");

    ProductList.list.add(productData);

    return productData;
  }
}
