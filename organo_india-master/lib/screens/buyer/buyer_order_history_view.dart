import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuyerOrderHistoryView extends StatefulWidget {
  @override
  _BuyerOrderHistoryViewState createState() => _BuyerOrderHistoryViewState();
}

class _BuyerOrderHistoryViewState extends State<BuyerOrderHistoryView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            productHeader(),
            orderCard(),
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
                "Order History",
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
          Text(
            "Your Order          ",
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
          Container(
            child: Row(children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffAAAAAA)),
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/ic_search.svg",
                        height: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              hintText: "Search all orders",
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Color(0xffE2E2E2))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              MaterialButton(
                color: Color(0xfff919191),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Filter",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset("assets/icons/ic_filter.svg"),
                    SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset("assets/icons/ic_arrow_forword.svg"),
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your Orders",
            style: TextStyle(color: Color(0xffAAAAAA)),
          ),
          productList(),
        ],
      ),
    );
  }

  Widget productList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
           // Navigator.pushNamed(context, "/product_details");
          },
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: 4),
            height: 100.0,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xffDBDBDB)),
                bottom: BorderSide(width: 1.0, color: Color(0xffDBDBDB)),
              ),
              color: index % 2 == 0 ? Color(0xffFAFAFA) : Colors.white,
            ),
            child: Row(
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
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Wheat",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff2D2B2B)),
                          ),
                          Spacer(),
                          MaterialButton(onPressed: (){},color: Color(0xff429450),child: Text("Download Invoice",style: TextStyle(fontSize: 10,color: Colors.white),),height: 20,padding: const EdgeInsets.symmetric(horizontal: 8),),

                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Bid Date (DD/MM/YYYY)",
                            style: TextStyle(color: Color(0xff646464)),
                          ),
                          Spacer(),
                          SvgPicture.asset("assets/icons/ic_arrow_right.svg")
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
