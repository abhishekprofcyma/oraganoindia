import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class TransportRequestView extends StatefulWidget {
  @override
  _TransportRequestViewState createState() => _TransportRequestViewState();
}

class _TransportRequestViewState extends State<TransportRequestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(true),
      body: list(),
    );
  }

  Widget list() {
    return ListView.builder(itemBuilder: (context, index) {
      return listItem();
    });
  }

  Widget listItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xffDCDCDC))),
      child: Column(
        children: [
          idDetails(),
          userDetails(),
          SizedBox(
            height: 8,
          ),
          locationDetails(),
        ],
      ),
    );
  }

  Widget idDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ID: # 23145786",
          style:
              TextStyle(color: Color(0xff2D2B2B), fontWeight: FontWeight.w500),
        ),
        PopupMenuButton(
            elevation: 20,
            onSelected: (menuSelected) {
              if (menuSelected == "confirm") {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    opaque: false, // set to false
                    pageBuilder: (_, __, ___) => TransportRequestAmountDialog(),
                  ),
                );
              } else if (menuSelected == "rejects") {
              } else if (menuSelected == "call") {}
            },
            enabled: true,
            onCanceled: () {
              //do something
            },
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Color(
                            0xff474545,
                          ),
                          fontSize: 14),
                    ),
                    value: "confirm",
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Rejects",
                      style: TextStyle(
                          color: Color(
                            0xff474545,
                          ),
                          fontSize: 14),
                    ),
                    value: "rejects",
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Call",
                      style: TextStyle(
                          color: Color(
                            0xff474545,
                          ),
                          fontSize: 14),
                    ),
                    value: "call",
                  ),
                ])
        // InkWell(
        //   child: Icon(
        //     Icons.more_vert,
        //     color: Color(0xff2D2B2B),
        //   ),
        //   onTap: () {},
        // )
      ],
    );
  }

  Widget userDetails() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"),
          radius: 20,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Peg Legge",
              style: TextStyle(
                  color: Color(
                    0xff2D2B2B,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/ic_call.svg"),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "+91 875 4563 765",
                  style: TextStyle(
                      color: Color(
                        0xff2D2B2B,
                      ),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget locationDetails() {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "10:00 AM",
              style: TextStyle(
                  color: Color(0xff2D2B2B),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "200 KM",
              style: TextStyle(color: Color(0xff5CB96C), fontSize: 10),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "02:00 PM",
              style: TextStyle(
                  color: Color(0xff2D2B2B),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 2,
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xffE4E4E4), borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          children: [
            SvgPicture.asset("assets/icons/ic_location_from.svg"),
            SvgPicture.asset("assets/icons/ic_location_line.svg"),
            SvgPicture.asset("assets/icons/ic_location_to.svg"),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "216, Shivleela Apts, Alibahi Premji Marg, Tarde Mumbai, Maharashtra  - 400007",
                style: TextStyle(color: Color(0xff6D6D6D), fontSize: 10),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "362, Kings Complex, Nanjappa Road Coimbatore, Tamil Nadu - 641018",
                style: TextStyle(color: Color(0xff6D6D6D), fontSize: 10),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget locationDetails1() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Text(
                "10:00 AM",
                style: TextStyle(
                    color: Color(0xff2D2B2B),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: Text(
              "02:00 PM",
              style: TextStyle(
                  color: Color(0xff2D2B2B),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Text(
                "200 KM",
                style: TextStyle(color: Color(0xff5CB96C), fontSize: 10),
              )),
          Positioned(
            left: 60,
            top: 0,
            bottom: 0,
            child: Container(
              width: 2,
              decoration: BoxDecoration(
                  color: Color(0xffE4E4E4),
                  borderRadius: BorderRadius.circular(5)),
            ),
          )
        ],
      ),
    );
  }
}

class TransportRequestAmountDialog extends StatefulWidget {
  @override
  _TransportRequestAmountDialogState createState() =>
      _TransportRequestAmountDialogState();
}

class _TransportRequestAmountDialogState
    extends State<TransportRequestAmountDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.4),
      body: Center(
        child: Container(
          height: 310,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter Amount",
                style: TextStyle(color: Color(0xff2D2B2B), fontSize: 20),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "",
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false, // set to false
                      pageBuilder: (_, __, ___) => TransportConfirmDialog(),
                    ),
                  );
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xff429450),
                minWidth: 120,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportConfirmDialog extends StatefulWidget {
  @override
  _TransportConfirmDialogState createState() => _TransportConfirmDialogState();
}

class _TransportConfirmDialogState extends State<TransportConfirmDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.4),
      body: Center(
        child: Container(
          height: 390,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                right: 16,
                  top: 16,
                  child: InkWell(child: SvgPicture.asset("assets/icons/close.svg",height: 24,),onTap: (){
                    Navigator.pop(context);
                  },)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/profile-created.png"),
                    SizedBox(height: 16,),
                    Text("You Confirm\nTransportation Request",style: TextStyle(color: Color(0xff2D2B2B),fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

