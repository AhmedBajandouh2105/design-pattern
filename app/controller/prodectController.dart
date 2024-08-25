import '../Model/prodect.dart';
import '../View/prodectView.dart';
import '../db/dbClass.dart';

class ProdectController {
  late Prodect prodect;
  late ProdectView prodectview;
  Dbclass dbObject = Dbclass.instance;
  ProdectController({required this.prodectview});

  loadProduct() {
    List<Map<String, dynamic>> data = dbObject.getData("products");
    List<Prodect> allProduct = data
        .map((element) => Prodect(
            name: element["name"],
            price: element["price"],
            qty: element["qty"]))
        .toList();
    prodectview.showProduct(allProduct);
  }
}
