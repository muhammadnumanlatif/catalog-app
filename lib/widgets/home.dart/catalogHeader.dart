//*utils
import '../../utils/utils.dart';

//*catalog header
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Catalog App'.text.xl5.bold.color(CAColor.secondary).make(),
        'Trending Products'.text.xl2.make(),
      ],
    );
  }
}