import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class TransporterFindPickupView extends StatefulWidget {
  @override
  _TransporterFindPickupViewState createState() =>
      _TransporterFindPickupViewState();
}

class _TransporterFindPickupViewState extends State<TransporterFindPickupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(true),
      body: bodyView(),
    );
  }

  Widget bodyView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "For finding on route pickup enter location",
            style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          datesView(),
          SizedBox(
            height: 16,
          ),
          fromView(),
          SizedBox(
            height: 16,
          ),
          Center(
              child: Text(
            "or",
            style: TextStyle(color: Color(0xff615F5F)),
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 16,
          ),
          Text(
            "For finding on route pickup enter Pincode",
            style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          fromPinView(),
          SizedBox(
            height: 16,
          ),
          Center(
              child: Container(
                width: 180,
                child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/transport_pickup_product");
            },
            child: Text(
                "Find",
                style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff429450),
                  padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
          ),
              ))
        ],
      ),
    );
  }

  Widget datesView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Start Date",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xff66BD75),
                  )
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "End Date",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xff66BD75),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget fromView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/ic_location_green_rounded.svg"),
                      Positioned(
                          top: 6,
                          left: 6,
                          right: 6,
                          bottom: 6,
                          child: SvgPicture.asset(
                            "assets/icons/ic_location.svg",
                            height: 20,
                            width: 20,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "To",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/ic_location_green_rounded.svg"),
                      Positioned(
                          top: 6,
                          left: 6,
                          right: 6,
                          bottom: 6,
                          child: SvgPicture.asset(
                            "assets/icons/ic_location.svg",
                            height: 20,
                            width: 20,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget fromPinView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/ic_location_green_rounded.svg"),
                      Positioned(
                          top: 6,
                          left: 6,
                          right: 6,
                          bottom: 6,
                          child: SvgPicture.asset(
                            "assets/icons/ic_location.svg",
                            height: 20,
                            width: 20,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "To",
              style: TextStyle(color: Color(0xff2D2B2B), fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffEEEEEE))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/ic_location_green_rounded.svg"),
                      Positioned(
                          top: 6,
                          left: 6,
                          right: 6,
                          bottom: 6,
                          child: SvgPicture.asset(
                            "assets/icons/ic_location.svg",
                            height: 20,
                            width: 20,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
