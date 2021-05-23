//*utils
import '../../utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //*Material App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalog-App',
      themeMode: ThemeMode.system,
      theme: CATheme.light(context),
      darkTheme: CATheme.dark(context),
      //*routes
      initialRoute: CARoute.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        CARoute.homeRoute: (context) => HomePage(),
        CARoute.cartRoute: (context) => CartPage(),
        CARoute.loginRoute: (context) => LoginPage(),
        CARoute.homeDetailRoute: (context) => HomeDetailPage(),
      },
    );
  }
}
