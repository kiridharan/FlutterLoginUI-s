import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final textsign;
  final textcolor;
  final buttoncolor;
  final onTap;

  const Button({Key key, this.textsign, this.textcolor, this.buttoncolor, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400,
        height: 60,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "$textsign".toUpperCase(),
            style: TextStyle(
              color: textcolor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}