//*utils
import '../../utils/utils.dart';

//*catalog List
class CatalogList extends StatelessWidget {
  const CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => context.vxNav.push(
            Uri(
              path: CARoute.homeDetailRoute,
              queryParameters: {"id": catalog.id.toString()},
            ),
            params: catalog,
          ),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}
