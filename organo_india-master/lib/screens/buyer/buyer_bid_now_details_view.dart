import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';
import 'package:organo_india/screens/widgets/organo_edittext.dart';

class BuyerBidNowDetailView extends StatefulWidget {
  @override
  _BuyerBidNowDetailViewState createState() => _BuyerBidNowDetailViewState();
}

class _BuyerBidNowDetailViewState extends State<BuyerBidNowDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 16,
            ),
            productDetails(),
            SizedBox(
              height: 16,
            ),
            productQuantity(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/icons/ic_back_arrow.svg")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              "https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hlYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
            ),
          ),
        ),
      ],
    );
  }

  Widget productDetails() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
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
        children: [
          Row(
            children: [
              Text(
                "Crop Information",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 20),
              ),
            ],
          ),
          OrganoEditTextView(
            hint: "Crop Name",
          ),
          OrganoEditTextView(
            hint: "Grade",
          ),
          OrganoEditTextView(
            hint: "Quantity",
          ),
          OrganoEditTextView(
            hint: "Crop Location",
          ),
          OrganoEditTextView(
            hint: "Available Date",
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Crop Details       ",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Seller Details     ",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 20),
              ),
            ],
          ),
          OrganoEditTextView(
            hint: "Seller Name",
          ),
        ],
      ),
    );
  }

  Widget productQuantity() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
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
        children: [
          Row(
            children: [
              Text(
                "COA",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 20),
              ),
            ],
          ),
          OrganoEditTextView(
            hint: "Variety",
          ),
          OrganoEditTextView(
            hint: "Moisture",
          ),
          OrganoEditTextView(
            hint: "Colour",
          ),
          OrganoEditTextView(
            hint: "Extraneous Matter",
          ),
          OrganoEditTextView(
            hint: "Broken Percentage",
          ),
          OrganoEditTextView(
            hint: "Purity",
          ),
          OrganoEditTextView(
            hint: "Type",
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
              child: MaterialButton(
            onPressed: () {},
            child: Text(
              "Bid Now",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff429450),
          ))
        ],
      ),
    );
  }
}
