//*utils
import '../../utils/utils.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: CATheme.gradientData,
              child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}"),
        ),
      ),
    );
  }
}
