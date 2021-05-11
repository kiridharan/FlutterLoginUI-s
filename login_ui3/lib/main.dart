import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff1F309D),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Image(
              width: 100.0,
              height: 50.0,
              image: AssetImage(
                "asset/image/logo-white.png",
              ),
            ),
          ),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 90.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Container(
            height: 680,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Image(
                    width: 100.0,
                    height: 50.0,
                    image: AssetImage(
                      "asset/image/logo-blue.png",
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 350,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 40,
                          right: 50.0,
                        ),
                        child: Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                              padding: const EdgeInsets.only(left: 7),
                              child: TextFormField(
                                cursorHeight: 25,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "OpenSans",
                                  ),
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                              padding: const EdgeInsets.only(left: 7),
                              child: TextFormField(
                                obscureText: true,
                                cursorHeight: 25,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "OpenSans",
                                  ),
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff1F309D),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 370,
                          height: 60,
                          child: Center(
                            child: Text(
                              "Login",
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
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("-Or Sign in With-"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.blueAccent,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 80),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Don't have any account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUPPage(),
                              ),
                            );
                          },
                          child: Container(
                            child: Text(
                              "SIgnUp",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1F309D),
                                fontFamily: "OpenSans",
                              ),
                            ),
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
      )),
    );
  }
}

class SignUPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Container(
            height: 680,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  iconSize: 22,
                  color: Color(0xff1F309D),
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Image(
                    width: 100.0,
                    height: 50.0,
                    image: AssetImage(
                      "asset/image/logo-blue.png",
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 40,
                          right: 50.0,
                        ),
                        child: Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                              padding: const EdgeInsets.only(left: 7),
                              child: TextFormField(
                                cursorHeight: 25,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "OpenSans",
                                  ),
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                              padding: const EdgeInsets.only(left: 7),
                              child: TextFormField(
                                obscureText: true,
                                cursorHeight: 25,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "OpenSans",
                                  ),
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                              padding: const EdgeInsets.only(left: 7),
                              child: TextFormField(
                                obscureText: true,
                                cursorHeight: 25,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "OpenSans",
                                  ),
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff1F309D),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 370,
                          height: 60,
                          child: Center(
                            child: Text(
                              "Login",
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
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("-Or Sign in With-"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.blueAccent,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: .5,
                              blurRadius: 8,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
