//*utils
import '../utils/utils.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
