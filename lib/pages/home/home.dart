//*utils
import '../../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //*Life Cycle Hook
  @override
  void initState() {
    super.initState();
    loadData();
  }

  //*methods
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString('assets/data/catalog.json');
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData['products'];
    CatalogModel.items = List.from(productData)
        .map<Item>(
          (item) => Item.fromMap(item),
        )
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*body
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          decoration: CATheme.gradientData,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  ? CatalogList().expand()
                  : Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(CAColor.secondary),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

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

//*catalog List
class CatalogList extends StatelessWidget {
  const CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(
          catalog: catalog,
        );
      },
    );
  }
}

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
          CatalogImage(
            image: catalog.image,
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
                catalog.desc.text.make(),
                10.heightBox,
                //*button
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    //*price
                    '\$${catalog.price}'.text.make(),
                    //*buy
                    ElevatedButton(
                      onPressed: () {},
                      child: 'Buy'.text.make(),
                    ),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).white.square(150).rounded.make().py16();
  }
}

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
          CAColor.light.withOpacity(0.3),
        )
        .make()
        .p16()
        .w40(context)
        .h40(context);
  }
}
