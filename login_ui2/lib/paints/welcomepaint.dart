import 'package:flutter/material.dart';

class WelcomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xff0058D5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.3300000);
    path_0.quadraticBezierTo(
        0, size.height * 0.4562500, 0, size.height * 0.5250000);
    path_0.quadraticBezierTo(size.width * 0.2106250, size.height * 0.4862500,
        size.width * 0.4200000, size.height * 0.6216667);
    path_0.quadraticBezierTo(size.width * 0.6368750, size.height * 0.7100000,
        size.width * 0.8350000, size.height * 0.5866667);
    path_0.lineTo(size.width, size.height * 0.4733333);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.4975000, size.height * 0.0016667);
    path_0.quadraticBezierTo(size.width * 0.5912500, size.height * 0.2070833,
        size.width * 0.8375000, size.height * 0.1900000);
    path_0.cubicTo(
        size.width * 0.9456250,
        size.height * 0.2279167,
        size.width * 0.9143750,
        size.height * 0.3487500,
        size.width * 0.7450000,
        size.height * 0.4316667);
    path_0.cubicTo(
        size.width * 0.6887500,
        size.height * 0.4683333,
        size.width * 0.4437500,
        size.height * 0.4583333,
        size.width * 0.3600000,
        size.height * 0.3716667);
    path_0.cubicTo(
        size.width * 0.2875000,
        size.height * 0.3095833,
        size.width * 0.1900000,
        size.height * 0.2745833,
        0,
        size.height * 0.3300000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Color(0xff006BFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1507250, size.height * 0.3858333);
    path_1.cubicTo(
        size.width * 0.1936250,
        size.height * 0.3794333,
        size.width * 0.2126500,
        size.height * 0.3952833,
        size.width * 0.1928750,
        size.height * 0.4223500);
    path_1.cubicTo(
        size.width * 0.1928750,
        size.height * 0.4406333,
        size.width * 0.1746250,
        size.height * 0.4655000,
        size.width * 0.1280500,
        size.height * 0.4655000);
    path_1.cubicTo(
        size.width * 0.1007000,
        size.height * 0.4655000,
        size.width * 0.0719000,
        size.height * 0.4645667,
        size.width * 0.0861250,
        size.height * 0.4297500);
    path_1.cubicTo(
        size.width * 0.0874250,
        size.height * 0.4307833,
        size.width * 0.0806000,
        size.height * 0.3987000,
        size.width * 0.1507250,
        size.height * 0.3858333);
    path_1.close();

    canvas.drawPath(path_1, paint_1);
    Paint paint_2 = new Paint()
      ..color = Color(0xff006BFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7933500, size.height * 0.4995000);
    path_2.cubicTo(
        size.width * 0.8362500,
        size.height * 0.4931000,
        size.width * 0.8552750,
        size.height * 0.5089500,
        size.width * 0.8355000,
        size.height * 0.5360167);
    path_2.cubicTo(
        size.width * 0.8355000,
        size.height * 0.5543000,
        size.width * 0.8172500,
        size.height * 0.5791667,
        size.width * 0.7706750,
        size.height * 0.5791667);
    path_2.cubicTo(
        size.width * 0.7433250,
        size.height * 0.5791667,
        size.width * 0.7145250,
        size.height * 0.5782333,
        size.width * 0.7287500,
        size.height * 0.5434167);
    path_2.cubicTo(
        size.width * 0.7300500,
        size.height * 0.5444500,
        size.width * 0.7232250,
        size.height * 0.5123667,
        size.width * 0.7933500,
        size.height * 0.4995000);
    path_2.close();

    canvas.drawPath(path_2, paint_2);
    Paint paint_3 = new Paint()
      ..color = Color(0xff006BFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8609500, size.height * 0.1962000);
    path_3.cubicTo(
        size.width * 0.8734500,
        size.height * 0.1962000,
        size.width * 0.8870250,
        size.height * 0.2015667,
        size.width * 0.8870250,
        size.height * 0.2135500);
    path_3.cubicTo(
        size.width * 0.8870250,
        size.height * 0.2218833,
        size.width * 0.8782750,
        size.height * 0.2309833,
        size.width * 0.8609500,
        size.height * 0.2309833);
    path_3.cubicTo(
        size.width * 0.8484500,
        size.height * 0.2309833,
        size.width * 0.8350000,
        size.height * 0.2251500,
        size.width * 0.8350000,
        size.height * 0.2135500);
    path_3.cubicTo(
        size.width * 0.8350000,
        size.height * 0.2052667,
        size.width * 0.8436000,
        size.height * 0.1962000,
        size.width * 0.8609500,
        size.height * 0.1962000);
    path_3.close();

    canvas.drawPath(path_3, paint_3);

    Paint paint_4 = new Paint()
      ..color = Color(0xff006BFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5984500, size.height * 0.3481833);
    path_4.cubicTo(
        size.width * 0.6140000,
        size.height * 0.3481833,
        size.width * 0.6293000,
        size.height * 0.3566167,
        size.width * 0.6386750,
        size.height * 0.3750000);
    path_4.cubicTo(
        size.width * 0.6668750,
        size.height * 0.3978667,
        size.width * 0.6285500,
        size.height * 0.4018333,
        size.width * 0.5984500,
        size.height * 0.4018333);
    path_4.cubicTo(
        size.width * 0.5891500,
        size.height * 0.3945333,
        size.width * 0.5582500,
        size.height * 0.3950667,
        size.width * 0.5582500,
        size.height * 0.3750000);
    path_4.cubicTo(
        size.width * 0.5332750,
        size.height * 0.3563000,
        size.width * 0.5684000,
        size.height * 0.3481833,
        size.width * 0.5984500,
        size.height * 0.3481833);
    path_4.close();

    canvas.drawPath(path_4, paint_4);
    Paint paint_5 = new Paint()
      ..color = Color(0xff006BFF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6823500, size.height * 0.0466167);
    path_5.cubicTo(
        size.width * 0.6948250,
        size.height * 0.0466167,
        size.width * 0.7050000,
        size.height * 0.0519500,
        size.width * 0.7050000,
        size.height * 0.0616833);
    path_5.cubicTo(
        size.width * 0.7050000,
        size.height * 0.0700500,
        size.width * 0.6948250,
        size.height * 0.0768333,
        size.width * 0.6823500,
        size.height * 0.0768333);
    path_5.cubicTo(
        size.width * 0.6698750,
        size.height * 0.0768333,
        size.width * 0.6597000,
        size.height * 0.0700500,
        size.width * 0.6597000,
        size.height * 0.0616833);
    path_5.cubicTo(
        size.width * 0.6597000,
        size.height * 0.0534000,
        size.width * 0.6698750,
        size.height * 0.0466167,
        size.width * 0.6823500,
        size.height * 0.0466167);
    path_5.close();

    canvas.drawPath(path_5, paint_5);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.8937500, size.height * 0.1789833);
    path_6.cubicTo(
        size.width * 0.9086000,
        size.height * 0.1779500,
        size.width * 0.9206250,
        size.height * 0.1843500,
        size.width * 0.9206250,
        size.height * 0.1968833);
    path_6.cubicTo(
        size.width * 0.9206250,
        size.height * 0.2057833,
        size.width * 0.9118750,
        size.height * 0.2149000,
        size.width * 0.8937500,
        size.height * 0.2149000);
    path_6.cubicTo(
        size.width * 0.8804750,
        size.height * 0.2149000,
        size.width * 0.8670250,
        size.height * 0.2090667,
        size.width * 0.8670250,
        size.height * 0.1968833);
    path_6.cubicTo(
        size.width * 0.8670250,
        size.height * 0.1886000,
        size.width * 0.8772000,
        size.height * 0.1779500,
        size.width * 0.8937500,
        size.height * 0.1789833);
    path_6.close();

    canvas.drawPath(path_6, paint_2);

    Paint paint_7 = new Paint()
      ..color = Color(0xff0058D5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5984500, size.height * 0.3481833);
    path_7.cubicTo(
        size.width * 0.6140000,
        size.height * 0.3481833,
        size.width * 0.6293000,
        size.height * 0.3566167,
        size.width * 0.6386750,
        size.height * 0.3750000);
    path_7.cubicTo(
        size.width * 0.6668750,
        size.height * 0.3978667,
        size.width * 0.6285500,
        size.height * 0.4018333,
        size.width * 0.5984500,
        size.height * 0.4018333);
    path_7.cubicTo(
        size.width * 0.5891500,
        size.height * 0.3945333,
        size.width * 0.5582500,
        size.height * 0.3950667,
        size.width * 0.5582500,
        size.height * 0.3750000);
    path_7.cubicTo(
        size.width * 0.5332750,
        size.height * 0.3563000,
        size.width * 0.5684000,
        size.height * 0.3481833,
        size.width * 0.5984500,
        size.height * 0.3481833);
    path_7.close();

    canvas.drawPath(path_7, paint_7);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
