import 'View/prodectView.dart';
import 'controller/prodectController.dart';

void main(List<String> args) {
  ProdectController prodectController =
      ProdectController(prodectview: ProdectView());
  prodectController.loadProduct();
}
