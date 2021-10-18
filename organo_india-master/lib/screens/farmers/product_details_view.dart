import 'package:flutter/material.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class ProductDetailsView extends StatefulWidget {
  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            productHeader(),
            orderCard(),
            SizedBox(
              height: 16,
            ),
            previousHistory(),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget productHeader() {
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
                "My Product",
                style: TextStyle(
                    color: Color(0xff2D2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget orderCard() {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff707070),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.network(
                "https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hlYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Potato",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xff6C6C6C)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cropDetailItem("Lot Number", "", true, false),
                      cropDetailItem("Status", "", true, false),
                      cropDetailItem("Quantity", "(IN KILOGRAM)", true, false),
                      cropDetailItem("Bid Date", "(DD/MM/YYYY)", true, false),
                      cropDetailItem("Amount", "", true, true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cropDetailItem(
      String text, String subtitle, bool isTopBorder, bool isBottomBorder) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border(
          top: isTopBorder
              ? BorderSide(width: 0.5, color: Color(0xff646464))
              : BorderSide(width: 0.0, color: Color(0xff646464)),
          bottom: isBottomBorder
              ? BorderSide(width: 0.5, color: Color(0xff646464))
              : BorderSide(width: 0.0, color: Color(0xff646464)),
        ),
      ),
      // child: Text(
      //   text,
      //   style: TextStyle(color: Color(0xff646464), fontWeight: FontWeight.w500),
      // ),
      child: RichText(
        text: TextSpan(
          style:
              TextStyle(color: Color(0xff646464), fontWeight: FontWeight.w500),
          children: <TextSpan>[
            TextSpan(text: text, style: TextStyle()),
            TextSpan(text: " "),
            TextSpan(
                text: subtitle,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }

  Widget previousHistory() {
    return Column(
      children: [
        Text(
          "Previous History",
          style: TextStyle(color: Color(0xff707070), fontSize: 20),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 140,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                width: 16,
              ),
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  child: Column(
                    children: [
                      Card(
                        child: Image.network(
                            "https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hlYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                        height: 90,width: 90,),
                      ),
                      Expanded(child: Text("Crop Name",style: TextStyle(color: Color(0xffC6C6C6)),))
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
