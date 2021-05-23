//*utils
import '../utils/utils.dart';

class CatalogModel {
  static List<Item> items;

  //*item by id
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //*item by position
  static Item getByPosition(int pos) => items[pos];
}
