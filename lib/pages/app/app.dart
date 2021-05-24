//*utils
import '../../utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //*Material App
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Catalog-App',
      themeMode: ThemeMode.system,
      theme: CATheme.light(context),
      darkTheme: CATheme.dark(context),
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (_, __) => MaterialPage(child: LoginPage()),
          CARoute.homeRoute: (_, __) => MaterialPage(child: HomePage()),
          CARoute.homeDetailRoute: (uri, _) {
            final catalog = (VxState.store as MyStore).catalog.getById(
                  int.parse(
                    uri.queryParameters["id"],
                  ),
                );
            return MaterialPage(
              child: HomeDetailPage(
                catalog: catalog,
              ),
            );
          },
          CARoute.cartRoute: (_, __) => MaterialPage(child: CartPage()),
          CARoute.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
        },
      ),
      //*routes
      //*initialRoute: CARoute.homeRoute,
    );
  }
}
