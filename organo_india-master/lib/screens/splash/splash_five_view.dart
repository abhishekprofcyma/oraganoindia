import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';

import '../../constants.dart';

class SplashFiveView extends StatefulWidget {
  @override
  _SplashFiveViewState createState() => _SplashFiveViewState();
}

class _SplashFiveViewState extends State<SplashFiveView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: "circle1",
            child: Container(
              child: CustomPaint(
                painter: OpenPainter(100, kPrimaryColor,
                    Offset(size.width / 4, size.height / 8)),
              ),
            ),
          ),
          Hero(
            tag: "circle2",
            child: Container(
              child: CustomPaint(
                painter: OpenPainter(140, kPrimaryColor,
                    Offset(size.width / 1, size.height / 4.5)),
              ),
            ),
          ),
          CustomPaint(
            painter: OpenPainter(360, kPrimaryColor,
                Offset(size.width / 2.7, size.height / 1.12)),
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
                              "Organic fair transparent and empowering",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                                onTap: () => Navigator.pushNamed(
                                    context, '/user_selection'),
                                child:
                                    SvgPicture.asset("assets/icons/arrow.svg"))
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
