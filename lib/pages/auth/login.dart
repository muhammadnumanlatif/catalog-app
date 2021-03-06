//*utils
import '../../utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.saturation,
            height: 250,
            //width: 250,
          ),

          //*title
          Text(
            'Let\'s explore together...',
            style: TextStyle(
              color: CAColor.dark,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          //*space
          SizedBox(
            height: 25,
          ),
          //*text field blok
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 32,
            ),
            child: Column(
              children: [
                //*username
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                  ),
                ),
                //*password
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                  ),
                ),
                //*space
                SizedBox(
                  height: 25,
                ),
                //*button
                ElevatedButton(
                  child: Text(
                    'Login',
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: CAColor.dark,
                  ),
                  onPressed: () {
                    print('avine tech');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
