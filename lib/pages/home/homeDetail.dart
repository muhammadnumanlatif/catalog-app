//*utils
import '../../utils/utils.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key key,
    this.catalog,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(),
      bottomNavigationBar: //*button
          ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          //*price
          '\$${catalog.price}'.text.xl2.make(),
          //*Get Now
          AddToCart(
            catalog: catalog,
          ),
        ],
      ).p24(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
                  .hPCT(context: context, heightPCT: 32),
            ).p16(),
            Expanded(
              child: VxArc(
                height: 25,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                clipShadows: [
                  VxClipShadow(color: CAColor.secondary),
                  VxClipShadow(color: CAColor.light),
                ],
                child: Container(
                  decoration: CATheme.gradientData,
                  width: context.screenWidth,
                  child: ListView(
                    children: [
                      //*title
                      catalog.name.text.bold.xl4.makeCentered(),
                      //*DESC

                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .makeCentered(),

                      5.heightBox,
                      "Enim voluptatibus aut iusto et et et quia voluptatem. Ducimus rerum aut ab blanditiis aliquid nulla impedit. Aspernatur at beatae eligendi error magni odio cumque. Occaecati quo fuga. Reiciendis at esse distinctio tempore qui ipsum totam iure."
                          .text
                          .textStyle(
                            context.captionStyle,
                          )
                          .make()
                          .p16(),
                    ],
                  ).pOnly(
                    top: 32,
                    left: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
