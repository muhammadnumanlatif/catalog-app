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
        decoration: CATheme.gradientData,
        child: Center(
          child: Text(
            'Catalog-App by Pawan-Kumar',
          ),
        ),
      ),
    );
  }
}
