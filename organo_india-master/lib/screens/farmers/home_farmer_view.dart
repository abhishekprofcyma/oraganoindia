import 'package:flutter/material.dart';
import 'package:organo_india/screens/farmers/create_bid_view.dart';
import 'package:organo_india/screens/signup/widget/farmer_basic_info.dart';
import 'package:organo_india/screens/signup/widget/my_product_screen.dart';
import 'package:organo_india/screens/widgets/bottom_bar/convex_bottom_navigation.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class HomeFarmerView extends StatefulWidget {
  @override
  _HomeFarmerViewState createState() => _HomeFarmerViewState();
}

class _HomeFarmerViewState extends State<HomeFarmerView> {
  int _selectedIndex = 3;

  static List<Widget> _widgetOptions = <Widget>[
    Text("Goto Dashboard"),
    CreateBidView(),
    MyProductScreen(),
    FarmerBasicInfo(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onItemTapped(3);
  }

  void _onItemTapped(int index) {
    if(index == 0){
      Navigator.pushNamed(context, "/user_selection");
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
            title: "Create Bid",
          ),
          TabData(
            icon: const Icon(Icons.laptop),
            title: "My Product",
          ),
          TabData(
            icon: const Icon(Icons.account_circle),
            title: "Profile",
          ),
        ],
        initialSelection: 3,
        onTabChangedListener: _onItemTapped,
      ),
    );
  }
}
