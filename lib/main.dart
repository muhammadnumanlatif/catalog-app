//*utils
import 'utils/utils.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    VxState(
      store: MyStore(),
      child: MyApp(),
    ),
  );
}
