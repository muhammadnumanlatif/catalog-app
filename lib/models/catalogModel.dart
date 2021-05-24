//*utils
import '../utils/utils.dart';

class CatalogModel {

  static List<Item> items;

  //*item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //*item by position
  Item getByPosition(int pos) => items[pos];
}
