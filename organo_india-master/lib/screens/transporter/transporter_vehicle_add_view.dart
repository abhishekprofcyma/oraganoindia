import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';
import 'package:organo_india/screens/widgets/organo_edittext.dart';

class TransporterVehicleAddView extends StatefulWidget {
  @override
  _TransporterVehicleAddViewState createState() =>
      _TransporterVehicleAddViewState();
}

class _TransporterVehicleAddViewState extends State<TransporterVehicleAddView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrganoEditTextView(
            hint: "Transporter ID",
          ),
          OrganoEditTextView(
            hint: "Vehicle Number",
          ),
          OrganoEditTextView(
            hint: "Name of vehicle",
          ),
          OrganoEditTextView(
            hint: "Vehicle carry capacity",
          ),
          usersLocation(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Save"),
                ),
                SizedBox(
                  width: 180,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add,color: Color(0xff5CB96C),),
                        SizedBox(width: 8,),
                        Text("Add new vehicle",style: TextStyle(color: Color(0xff5CB96C)),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget usersLocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "From",
                style: TextStyle(color: Color(0xff777777)),
              ),
              Container(
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                style: TextStyle(color: Color(0xff777777)),
              ),
              Container(
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
      ),
    );
  }
}
