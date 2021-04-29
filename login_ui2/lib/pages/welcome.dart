import 'package:flutter/material.dart';
import 'package:login_ui2/pages/Login_page.dart';
import 'package:login_ui2/pages/SignUp.dart';
import 'package:login_ui2/paints/welcomepaint.dart';
import 'package:login_ui2/widget/button.dart';
import 'package:login_ui2/widget/outlinebutton.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff006BFF),
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: WelcomePainter(),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              child: Text(
                "vwater",
                style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 200),
                      child: Container(
                        height: 40,
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Water Delivery",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 190, left: 20),
                      child: Text(
                        "We deliver water at any point of Earth in 30 mins ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Quicksand",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Button(
                      textcolor: Color(0xff006BFF),
                      textsign: "Login",
                      buttoncolor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutLinedButton(
                      buttonText: "Sign Up",
                      outlinColor: Colors.white,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                    )
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
