import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';

import '../../constants.dart';
import 'change_password_dialog_view.dart';

class ChangePasswordView extends StatefulWidget {
  @override
  _ChangePasswordViewState createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56 + 36),
        child: Container(
          color: kSecondaryColor,
          padding: const EdgeInsets.only(top: 26, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              CircleView(
                radius: 36,
                color: Color(0xffB9E1C0),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter your new password below we're just being extra safe",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(
                    color: Colors.black, fontWeight: FontWeight.w600),),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 0),
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Color(0xff919191), width: 1),
                    ),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Old Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff646464),
                          decorationStyle: TextDecorationStyle.wavy)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 0),
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Color(0xff919191), width: 1),
                    ),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "New Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff646464),
                          decorationStyle: TextDecorationStyle.wavy)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 0),
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Color(0xff919191), width: 1),
                    ),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff646464),
                          decorationStyle: TextDecorationStyle.wavy)),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: 90,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) {
                          return ChangePasswordDialogView();
                        }
                    ));
                  }, //Navigator.pushNamed(context, '/change_password_dialog'),
                  child: Text("Save"),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
