import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';
import 'package:organo_india/screens/widgets/organo_button.dart';

class BidsAcceptView extends StatefulWidget {
  @override
  _BidsAcceptViewState createState() => _BidsAcceptViewState();
}

class _BidsAcceptViewState extends State<BidsAcceptView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            bidsHeader(),
            SizedBox(
              height: 16,
            ),
            bidsList()
          ],
        ),
      ),
    );
  }

  Widget bidsHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios)),
              SizedBox(
                width: 8,
              ),
              Text(
                "Accept/Reject Bids",
                style: TextStyle(
                    color: Color(0xff2D2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Bid List          ",
            style: TextStyle(
              shadows: [
                Shadow(color: Color(0xff979797), offset: Offset(0, -10))
              ],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Color(0xff979797),
              decorationThickness: 2,
              fontSize: 22,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Total Bids Received",
            style: TextStyle(
                color: Color(0xff2D2B2B), fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget bidsList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(1, 1),
                      spreadRadius: 2)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://images.unsplash.com/photo-1578594640334-b71fbed2a406?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Time Remaining",style: TextStyle(color: Color(0xffCBCBCB)),),
                  ],
                ),
                Text("Crop Name",style: TextStyle(color: Color(0xff2D2B2B),fontSize: 22,fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Buyer Name",style: TextStyle(color: Color(0xff646464),fontSize: 18,height: 2),),
                      Text("Buyer's Address",style: TextStyle(color: Color(0xff646464),fontSize: 18,height: 2),),
                      Text("Status",style: TextStyle(color: Color(0xff646464),fontSize: 18,height: 2),),
                      Text("Date",style: TextStyle(color: Color(0xff646464),fontSize: 18,height: 2),),
                      Text("Quantity Req.",style: TextStyle(color: Color(0xffAAAAAA),fontSize: 18,height: 2),),
                      Text("Min Bid Value",style: TextStyle(color: Color(0xffAAAAAA),fontSize: 18,height: 2),),
                      SizedBox(height: 8,),
                      Center(child: Text("Bid Price",style: TextStyle(color: Color(0xff2D2B2B),fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(onPressed: (){},child: Text("Accept",style: TextStyle(fontSize: 18),),color: Color(0xff86D17C),),
                    MaterialButton(onPressed: (){},child: Text("Decline",style: TextStyle(fontSize: 18,color: Colors.white),),color: Color(0xffEE5656),)
                  ],
                ),
                SizedBox(height: 16,),
                Center(child: SvgPicture.asset("assets/icons/ic_arrow_up.svg",)),
                SizedBox(height: 8,),
              ],
            ),
          );
        });
  }
}
