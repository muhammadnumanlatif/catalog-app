

//*utils
import '../../utils/utils.dart';


//*catalog image
class CatalogImage extends StatelessWidget {
  const CatalogImage({Key key, this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(
          CAColor.light,
        )
        .make()
        .p16()
        .w40(context)
        .h40(context);
  }
}