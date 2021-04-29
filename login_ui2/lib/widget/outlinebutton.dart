import 'package:flutter/material.dart';

class OutLinedButton extends StatelessWidget {
  final buttonText;
  final outlinColor;
  final onPressed;
  final textColor;
  const OutLinedButton(
      {Key key, this.buttonText, this.outlinColor, this.onPressed, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 60,
      child: TextButton(
        child: Text(
          "$buttonText".toUpperCase(),
          style: TextStyle(fontSize: 20, color: textColor),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(outlinColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: outlinColor,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
