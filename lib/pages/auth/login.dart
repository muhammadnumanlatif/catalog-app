//*utils
import '../../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //*space
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.contain,
              colorBlendMode: BlendMode.saturation,
              height: 250,
              //width: 250,
            ),

            //*title
            Text(
              'Welcome $name,\nLet\'s explore together...',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CAColor.dark,
                fontSize: 28,
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));

                      Navigator.pushNamed(context, CARoute.homeRoute);
                    },
                    child: AnimatedContainer(
                      height: 50,
                      width: changeButton ? 50 : 125,
                      duration: Duration(seconds: 1),
                      decoration: BoxDecoration(
                        color: CAColor.dark,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: CAColor.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                color: CAColor.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text(
                  //     'Login',
                  //   ),
                  //   style: TextButton.styleFrom(
                  //     backgroundColor: CAColor.dark,
                  //     minimumSize: Size(125, 50),
                  //   ),
                  //   onPressed: () {
                  //     //*print('avine tech');
                  //     Navigator.pushNamed(context, CARoute.homeRoute);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
