//*utils
import '../../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //*var
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  //*method
  void moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, CARoute.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  //*build
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: CATheme.gradientLogin,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Username is Empty!';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is Empty!';
                          } else if (value.length < 6) {
                            return 'Password Length:(${value.length}) is less than 6 chartacter!';
                          }
                          return null;
                        },
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
                      Material(
                        color: CAColor.dark,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            height: 50,
                            width: changeButton ? 50 : 125,
                            duration: Duration(seconds: 1),
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
        ),
      ),
    );
  }
}
