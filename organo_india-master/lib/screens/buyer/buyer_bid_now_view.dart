import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuyerBidNowView extends StatefulWidget {
  @override
  _BuyerBidNowViewState createState() => _BuyerBidNowViewState();
}

class _BuyerBidNowViewState extends State<BuyerBidNowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            myBid(),
            productList(),
            SizedBox(height: 16,),
            alsoLike(),

          ],
        ),
      ),
    );
  }

  Widget myBid() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
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
                "Bid Now",
                style: TextStyle(
                    color: Color(0xff2D2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget productList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      itemCount: 4,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/buyer_bid_now_detail");
          },
          child: Container(
            height: 100.0,
            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Potato",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff2D2B2B)),
                    ),
                    Text(
                      "Bid Price",
                      style: TextStyle(color: Color(0xff646464)),
                    ),
                    Text(
                      "Quantity",
                      style: TextStyle(color: Color(0xff646464)),
                    ),
                  ],
                ),
                SizedBox(width: 16,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Transport Request",style: TextStyle(color: Colors.white,fontSize: 10),),
                        color: Color(0xff429450),
                        height: 20,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Location             ",
                            style: TextStyle(color: Color(0xff646464)),
                          ),
                          SvgPicture.asset("assets/icons/ic_arrow_right.svg")
                        ],
                      ),
                      Text(
                        "Time Remaining",
                        style: TextStyle(color: Color(0xff646464)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget alsoLike(){
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding:
          const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
          decoration: BoxDecoration(
            color: Color(0xff429450)
          ),
          child: Text("You may also like",style: TextStyle(color: Colors.white,fontSize: 18),),
        ),
        Container(
          height: 210,
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
