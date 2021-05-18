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
      //*appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        title: Text(
          'Catalog App',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      //*drawer
      drawer: CustomDrawer(),
      //*body
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: CATheme.gradientData,
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
    );
  }
}
