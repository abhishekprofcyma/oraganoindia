import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';

import '../../constants.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new SplashFirstPage(text: "Bid on organic produce",index: 1,)),
    new Center(child:new SplashSecondPage(text: "Certified organic produce",index: 2,)),
    new Center(child:new SplashFirstPage(text: "Page 3",index: 3,)),
    new Center(child:new SplashFirstPage(text: "Page 4",index: 4,))
  ];
  int _curr=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children:
          _list,
          scrollDirection: Axis.horizontal,

          // reverse: true,
          // physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num){
            setState(() {
              _curr=num;
            });
          },
        ),
    );
  }
}


class SplashFirstPage extends StatelessWidget {
  final text;
  final int index;
  SplashFirstPage({this.text, required this.index});
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
                painter: OpenPainter(
                    100, kPrimaryColor, Offset(size.width / 4, size.height / 8)),
              ),
            ),
          ),
          Hero(
            tag: "circle2",
            child: Container(
              child: CustomPaint(
                painter: OpenPainter(
                    140, kPrimaryColor, Offset(size.width / 1, size.height / 4.5)),
              ),
            ),
          ),
          CustomPaint(
            painter: OpenPainter(360, kPrimaryColor,
                Offset(size.width / 1.2, size.height / 1.12)),
            child: Stack(
              children: [
                Positioned(
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
                          width: size.width*0.9,
                          child: Column(
                            children: [
                              Text(
                                text,
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
                                  onTap:()=> Navigator.pushNamed(context, '/splash_second'),
                                  child:
                                  SvgPicture.asset("assets/icons/arrow.svg"))
                            ],
                          )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SplashSecondPage extends StatelessWidget {
  final text;
  final int index;

  const SplashSecondPage({Key? key, this.text,required this.index}) : super(key: key);
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
                              text,
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
                              onTap: ()=> Navigator.pushNamed(context, "/splash_third"),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: SvgPicture.asset(
                                          "assets/icons/arrow_line.svg")),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Flexible(
                                      flex: 5,
                                      child: SvgPicture.asset(
                                        "assets/icons/arrow.svg",
                                        color: kPrimaryColor,
                                      )),
                                ],
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
