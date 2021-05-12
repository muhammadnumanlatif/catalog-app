//*utils
import '../../utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //*Material App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalog-App by Pawan-Kumar',
      theme: ThemeData(
        primaryColor: CAColor.dark,
        accentColor: CAColor.secondary,
      ),
      //*Scaffold
      home: Home(),
    );
  }
}
