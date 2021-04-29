import 'package:flutter/material.dart';
import 'package:login_ui2/paints/Login_paint.dart';
import 'package:login_ui2/widget/button.dart';
import 'package:login_ui2/widget/outlinebutton.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: LoginPainter(),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 180,
              bottom: 500,
              child: Container(
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Text(
                        "Create",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 450,
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff0058D5),
                            ),
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Color(0xff0058D5),
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color(0xff0058D5),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xff0058D5),
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: Color(0xff0058D5),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0xff0058D5),
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Button(
                          textsign: "Sign Up",
                          buttoncolor: Color(0xff0058D5),
                          textcolor: Colors.white,
                          onTap: () {
                            print("Sign Up pressed");
                          },
                        ),
                        Text("or"),
                        OutLinedButton(
                          buttonText: "Login",
                          outlinColor: Color(0xff0058D5),
                          textColor: Color(0xff0058D5),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
