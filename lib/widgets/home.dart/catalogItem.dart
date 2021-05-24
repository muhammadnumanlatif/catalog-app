//*utils
import '../../utils/utils.dart';

//*catalog item
class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key key,
    this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          //*image
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          //*details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //*title
                catalog.name.text.bold.xl.make(),
                //*DESC
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                //*button
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    //*price
                    '\$${catalog.price}'.text.make(),
                    //*Place Order
                    AddToCart(catalog: catalog),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).gray300.square(150).rounded.make().py16();
  }
}

