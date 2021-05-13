//*utils
import '../../utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CAColor.dark,
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            color: CAColor.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
