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
      backgroundColor: context.canvasColor,
      //*body
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CARoute.cartRoute);
        },
        child: Icon(
          Icons.shopping_cart,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          decoration: CATheme.gradientData,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  ? CatalogList().py12().expand()
                  : Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(CAColor.secondary),
                      ),
                    ).expand(),
            ],
          ),
        ),
      ),
    );
  }
}
