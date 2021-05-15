//*utils
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.latoTextTheme(),
        primaryColor: CAColor.dark,
        accentColor: CAColor.secondary,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //*routes
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        CARoute.homeRoute: (context) => HomePage(),
        CARoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
