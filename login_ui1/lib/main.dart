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
      home: LoginContainer(),
    );
  }
}

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/Bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 80,
            left: 130,
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
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InputForm(
                    inputString: "Email",
                    obscure: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputForm(
                    inputString: "password",
                    obscure: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Button(
                    buttontext: "Login",
                    onTap: () {
                      print("Login");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextLogin(
                    heigh: 100.0,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    signText: "SignUp",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextLogin extends StatelessWidget {
  final signText;
  final onTap;
  final heigh;

  const TextLogin({Key key, this.signText, this.onTap, this.heigh})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: heigh),
      child: Container(
        child: Row(
          children: [
            Text(
              "Don't have any account?",
              style: TextStyle(
                fontWeight: FontWeight.w100,
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                child: Text(
                  "$signText",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  final inputString;
  final obscure;

  const InputForm({Key key, this.inputString, this.obscure}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        height: 93,
        width: width / 1.1,
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
                  fontFamily: "OpenSans",
                  letterSpacing: 0.3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: TextFormField(
                obscureText: obscure,
                cursorHeight: 25,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: "OpenSans",
                  ),
                  hintText: "$inputString",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
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
  final buttontext;
  final onTap;

  const Button({Key key, this.onTap, this.buttontext}) : super(key: key);
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
          width: 320,
          height: 60,
          child: Center(
            child: Text(
              "$buttontext",
              style: TextStyle(
                fontFamily: "OpenSans",
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

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage('assets/images/Bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 20,
              child: Container(
                // color: Colors.red,
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    InputForm(
                      inputString: "First name",
                      obscure: false,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InputForm(
                      inputString: "last name",
                      obscure: true,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InputForm(
                      inputString: "Email",
                      obscure: true,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InputForm(
                      inputString: "password",
                      obscure: true,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InputForm(
                      inputString: "confirm password",
                      obscure: true,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Button(
                      buttontext: "Sign Up",
                      onTap: () {
                        print("Login");
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextLogin(
                      heigh: 80.0,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      signText: "Login",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
