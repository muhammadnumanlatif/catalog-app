//*utils

import '../../utils/utils.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  //*Life Cycle Hook
  @override
  void initState() {
    super.initState();
    loadData();
  }

  //*methods
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    //var catalogJson = await rootBundle.loadString('assets/data/catalog.json');
    final response = await http.get(Uri.parse(url));
    final catalogJson = response.body;
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
    final CartModel _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      //*body
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, dynamic, status) {
          return FloatingActionButton(
            backgroundColor: CAColor.transparent,
            onPressed: () {
              Navigator.pushNamed(context, CARoute.cartRoute);
            },
            shape: RoundedRectangleBorder(),
            child: Icon(
              Icons.shopping_cart,
            ),
          ).badge(
            color: CAColor.transparent,
            count: _cart.items.length,
            size: 25,
            textStyle: TextStyle(
              color: CAColor.white,
              fontWeight: FontWeight.bold,
            ),
          );
        },
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
