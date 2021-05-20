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
      backgroundColor: CAColor.light,
      appBar: AppBar(),
      bottomNavigationBar: //*button
          ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          //*price
          '\$${catalog.price}'.text.xl2.make(),
          //*buy
          ElevatedButton(
            onPressed: () {},
            child: 'Buy'.text.xl.make(),
          ).wh(100, 35),
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
                  child: Column(
                    children: [
                      //*title
                      catalog.name.text.bold.xl4.make(),
                      //*DESC

                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
