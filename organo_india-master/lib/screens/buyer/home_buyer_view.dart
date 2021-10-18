import 'package:flutter/material.dart';
import 'package:organo_india/screens/buyer/buyer_basic_info.dart';
import 'package:organo_india/screens/buyer/buyer_bid_now_view.dart';
import 'package:organo_india/screens/farmers/create_bid_view.dart';
import 'package:organo_india/screens/signup/widget/farmer_basic_info.dart';
import 'package:organo_india/screens/signup/widget/my_product_screen.dart';
import 'package:organo_india/screens/widgets/bottom_bar/convex_bottom_navigation.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

import 'buyer_dashboard_view.dart';
import 'buyer_my_bids_view.dart';
import 'buyer_order_history_view.dart';

class HomeBuyerView extends StatefulWidget {
  @override
  _HomeBuyerViewState createState() => _HomeBuyerViewState();
}

class _HomeBuyerViewState extends State<HomeBuyerView> {
  int _selectedIndex = 4;

  static List<Widget> _widgetOptions = <Widget>[
    BuyerDashboardView(),
    BuyerMyBidsView(),
    BuyerBidNowView(),
    BuyerOrderHistoryView(),
    BuyerBasicInfo(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onItemTapped(4);
  }

  void _onItemTapped(int index) {
    if(index == 0){
      //Navigator.pushNamed(context, "/user_selection");
    }
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: ConvexBottomNavigation(
        barBackgroundColor: Color(0xffEFEFEF),
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        textColor: Color(0xff979797),
        bigIconPadding: 15.0,
        circleSize: CircleSize.BIG,
        smallIconPadding: 16.0,
        circleColor: Colors.grey,
        tabs: [
          TabData(
            icon: const Icon(Icons.home),
            title: "Dashboard",
          ),
          TabData(
            icon: const Icon(Icons.add),
            title: "My Bids",
          ),
          TabData(
            icon: const Icon(Icons.laptop),
            title: "Bid Now",
          ),
          TabData(
            icon: const Icon(Icons.laptop),
            title: "Order History",
          ),
          TabData(
            icon: const Icon(Icons.account_circle),
            title: "Profile",
          ),
        ],
        initialSelection: 4,
        onTabChangedListener: _onItemTapped,
      ),
    );
  }
}
