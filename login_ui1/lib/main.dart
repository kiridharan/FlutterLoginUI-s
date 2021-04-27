import 'package:flutter/material.dart';
import 'package:login_ui1/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildDarkTheme(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginContainer(),
    );
  }
}

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image(
            image: AssetImage('assets/images/Bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 80,
          left: 170,
          child: Image(
            height: 90,
            width: 90,
            image: AssetImage(
              'assets/images/Logo.png',
            ),
          ),
        ),
        Positioned(
          top: 240,
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                ),
              ),
              width: 450,
              height: 700,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  InputForm(
                    inputString: "Email",
                    obscure: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputForm(
                    inputString: "password",
                    obscure: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button(
                    onTap: () {
                      print("Login");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 90),
                    child: Container(
                      child: Row(
                        children: [
                          Text("Don't have any account?"),
                          GestureDetector(
                            onTap: () {
                              print("Sign Up");
                            },
                            child: Container(
                              child: Text("Sign Up"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InputForm extends StatelessWidget {
  final inputString;
  final obscure;

  const InputForm({Key key, this.inputString, this.obscure}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Text(
                inputString,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            TextFormField(
              obscureText: obscure,
              cursorHeight: 25,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final onTap;

  const Button({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          width: 400,
          height: 60,
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
