import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';
import 'package:organo_india/screens/widgets/organo_button.dart';
import 'package:organo_india/screens/widgets/organo_edittext.dart';

import '../../constants.dart';

class CreateBidView extends StatefulWidget {
  @override
  _CreateBidViewState createState() => _CreateBidViewState();
}

class _CreateBidViewState extends State<CreateBidView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            createBid(),
            cropInformation(),
            SizedBox(height: 16,),
            coaInformation(),
            SizedBox(height: 16,),
            farmerInformation(),
            SizedBox(height: 16,),
            buttons(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
  Widget createBid(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(width: 8,),
              Text("Create Bid",style: TextStyle(color: Color(0xff2D2B2B),fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/my_bid'),
            child: Text(
              "My Bids",
              style: Theme.of(context)
                  .textTheme
                  .headline6?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
  Widget cropInformation(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(1,1),
            spreadRadius: 2
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Crop Information",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20),),

                  ],
                ),
                OrganoEditTextView(hint: "Crop Name*",),
                OrganoEditTextView(hint: "Grade",),
                OrganoEditTextView(hint: "Qty",),
                OrganoEditTextView(hint: "Qty (Metric Ton)*",),
                OrganoEditTextView(hint: "MSP",),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/ic_arrow_up.svg"),
              SizedBox(height: 16,),
              SvgPicture.asset("assets/icons/ic_image_picker.svg"),
              SizedBox(height: 16,),
              SvgPicture.asset("assets/icons/ic_arrow_down.svg")
            ],
          )
        ],
      ),
    );
  }
  Widget coaInformation(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(1,1),
                spreadRadius: 2
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("COA",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20),),
              SvgPicture.asset("assets/icons/ic_arrow_up.svg")
            ],
          ),
          OrganoEditTextView(hint: "Moisture",),
          OrganoEditTextView(hint: "Color",),
          OrganoEditTextView(hint: "Extraneous Matter",),
          OrganoEditTextView(hint: "Broken Percentage",),
          OrganoEditTextView(hint: "Purity",),
          Row(
            children: [
              Expanded(child: OrganoEditTextView(hint: "Varity",)),
              SvgPicture.asset("assets/icons/ic_plus_circle.svg",height: 20,),
              SizedBox(width: 8,),
              SvgPicture.asset("assets/icons/ic_close_circle.svg",height: 20,),
            ],
          ),
        ],
      ),
    );
  }
  Widget farmerInformation(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(1,1),
                spreadRadius: 2
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Farmer Information",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20),),
              SvgPicture.asset("assets/icons/ic_arrow_up.svg")
            ],
          ),
          OrganoEditTextView(hint: "Name",),
          OrganoEditTextView(hint: "Address",),
          OrganoEditTextView(hint: "Pin code",),
          OrganoEditTextView(hint: "State",),
          OrganoEditTextView(hint: "District",),
          OrganoEditTextView(hint: "Tehsil",),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(onPressed: (){}, child: Text("KYC")),
            ],
          )
        ],
      ),
    );
  }
  Widget buttons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OrganoButtonView(text: "Submit", onclick: (){},isFilled: true,),
        OrganoButtonView(text: "Cancel", onclick: (){}),
      ],
    );
  }
}
