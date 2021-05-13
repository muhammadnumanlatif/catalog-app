//*utils
import '../../utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //*appbar
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      //*drawer
      drawer: Drawer(),
      //*body
      body: Center(
        child: Text(
          'Catalog-App by Pawan-Kumar',
        ),
      ),
    );
  }
}
