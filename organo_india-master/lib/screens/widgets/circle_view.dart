import 'package:flutter/material.dart';
import 'package:organo_india/constants.dart';

class CircleView extends StatelessWidget {
  final double radius;
  final Color color;

  const CircleView({Key? key, this.radius = 90, this.color = kPrimaryColor}) : super(key: key);



  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
      );
  }
}

class OpenPainter extends CustomPainter {
  final double radius;
  final Color color;
  final Offset offset;

  OpenPainter(this.radius, this.color, this.offset);


  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    //a circle
    canvas.drawCircle(offset, radius, paint1);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
