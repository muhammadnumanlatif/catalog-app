//*utils
import '../../utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*appbar
      appBar: AppBar(
        elevation: 0,
        title: Text('Catalog App'),
      ),
      //*drawer
      drawer: CustomDrawer(),
      //*body
      body: Center(
        child: Text(
          'Catalog-App by Pawan-Kumar',
        ),
      ),
    );
  }
}
