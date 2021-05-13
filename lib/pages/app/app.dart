//*utils
import '../../utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //*Material App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalog-App by Pawan-Kumar',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: CAColor.dark,
        accentColor: CAColor.secondary,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //*routes
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
