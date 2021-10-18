import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';

import '../../constants.dart';

class BankAddView extends StatefulWidget {
  @override
  _BankAddViewState createState() => _BankAddViewState();
}

class _BankAddViewState extends State<BankAddView> {
  @override
  Widget build(BuildContext context) {
    int listSize = 1;

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
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
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
                                hintText: "Account Holder Name",
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
                                hintText: "Bank Name",
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
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Bank Account Number *",
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
                                hintText: "Confirm Account Number *",
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
                          child: Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "IFSC Code *",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Color(0xff646464),
                                      decorationStyle: TextDecorationStyle.wavy)),
                            ),
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
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Upload copy of cancelled cheque",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Color(0xff646464),
                                          decorationStyle: TextDecorationStyle.wavy)),
                                ),
                              ),
                              SizedBox(width: 8,),
                              SvgPicture.asset("assets/icons/upload.svg")
                            ],
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text("Save"),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: kPrimaryColor),
                          ),
                        )
                      ],
                    );
                  }),
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      listSize = listSize + 1;
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/plus.svg",
                    height: 14,
                  ),
                  label: Text("Add Bank Account"))
            ],
          ),
        ),
      ),
    );
  }
}
