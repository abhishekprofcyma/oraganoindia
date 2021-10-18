import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';

import '../../constants.dart';

class SplashFourView extends StatefulWidget {
  @override
  _SplashFourViewState createState() => _SplashFourViewState();
}

class _SplashFourViewState extends State<SplashFourView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Hero(
            tag: "circle2",
            child: Container(
              child: CustomPaint(
                painter: OpenPainter(
                    150, Colors.white, Offset(size.width / 4, size.height / 8)),
              ),
            ),
          ),
          Hero(
            tag: "circle1",
            child: Container(
              child: CustomPaint(
                painter: OpenPainter(
                    100, Colors.white, Offset(size.width / 1, size.height / 4)),
              ),
            ),
          ),
          CustomPaint(
            painter: OpenPainter(
                380, Colors.white, Offset(size.width / 1.2, size.height / 1.12)),
            child: Stack(
              children: [
                Positioned(
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
                        child: Column(
                          children: [
                            Text(
                              "Collect or get delivered",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w100),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onTap: ()=> Navigator.pushNamed(context, "/splash_five"),
                              child: SvgPicture.asset(
                                "assets/icons/arrow.svg",
                                color: kPrimaryColor,
                              ),
                            )
                          ],
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
