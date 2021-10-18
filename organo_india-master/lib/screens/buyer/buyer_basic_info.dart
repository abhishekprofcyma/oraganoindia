import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/constants.dart';

class BuyerBasicInfo extends StatefulWidget {
  @override
  _BuyerBasicInfoState createState() => _BuyerBasicInfoState();
}

class _BuyerBasicInfoState extends State<BuyerBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 16,
        ),
        SvgPicture.asset("assets/icons/avatar.svg"),
        SizedBox(
          height: 8,
        ),
        Text(
          "Buyer Name",
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Color(0xff919191), width: 1),
              ),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)],
              color: Colors.white),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/mobile.svg",
                height: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "+91 XXXXXXXXXX",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff646464),
                          decorationStyle: TextDecorationStyle.wavy)),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/address_add'),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xff919191), width: 1),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 2)
                ],
                color: Colors.white),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/address.svg",
                  height: 24,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Address",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff646464),
                            decorationStyle: TextDecorationStyle.wavy)),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  "assets/icons/add_circle.svg",
                  height: 24,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/change_password'),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xff919191), width: 1),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 2)
                ],
                color: Colors.white),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/password.svg",
                  height: 24,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Change Password",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff646464),
                            decorationStyle: TextDecorationStyle.wavy)),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  "assets/icons/edit_circle.svg",
                  height: 24,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/bank_add'),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xff919191), width: 1),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 2)
                ],
                color: Colors.white),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/bank.svg",
                  height: 24,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Add Bank",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color(0xff646464),
                            decorationStyle: TextDecorationStyle.wavy)),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  "assets/icons/add_circle.svg",
                  height: 24,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Color(0xff919191), width: 1),
              ),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)],
              color: Colors.white),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/kyc.svg",
                height: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "KYC",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff646464),
                          decorationStyle: TextDecorationStyle.wavy)),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: Theme.of(context)
                  .textTheme
                  .headline6?.copyWith(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: kPrimaryColor),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/user_selection");
            },
            child: Text(
              "Logout",
              style: Theme.of(context)
                  .textTheme
                  .headline6?.copyWith(color: kPrimaryColor),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: kPrimaryColor),
            ),
          ),
        )
      ],
    );
  }
}
