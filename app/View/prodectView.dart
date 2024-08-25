import '../Model/prodect.dart';

class ProdectView {
  showProduct(List<Prodect> items) {
    items.forEach((item) {
      print("name = ${item.name}, price = ${item.price}, qty = ${item.qty}");
    });
  }
}
