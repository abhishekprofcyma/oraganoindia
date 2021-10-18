import 'package:flutter/material.dart';
import 'package:organo_india/screens/address/address_add_view.dart';
import 'package:organo_india/screens/bank/bank_add_view.dart';
import 'package:organo_india/screens/buyer/buyer_bid_now_details_view.dart';
import 'package:organo_india/screens/buyer/home_buyer_view.dart';
import 'package:organo_india/screens/change_password/ChangePasswordView.dart';
import 'package:organo_india/screens/change_password/change_password_dialog_view.dart';
import 'package:organo_india/screens/farmers/create_bid_view.dart';
import 'package:organo_india/screens/farmers/home_farmer_view.dart';
import 'package:organo_india/screens/farmers/product_details_view.dart';
import 'package:organo_india/screens/my_bids/bids_accept_view.dart';
import 'package:organo_india/screens/my_bids/my_bids_screen.dart';
import 'package:organo_india/screens/otp/otp_view.dart';
import 'package:organo_india/screens/register/register_view.dart';
import 'package:organo_india/screens/splash/splash_five_view.dart';
import 'package:organo_india/screens/splash/splash_four_view.dart';
import 'package:organo_india/screens/splash/splash_page.dart';
import 'package:organo_india/screens/splash/splash_second_view.dart';
import 'package:organo_india/screens/splash/splash_third_view.dart';
import 'package:organo_india/screens/splash/splash_first_view.dart';
import 'package:organo_india/screens/transporter/transport_request_view.dart';
import 'package:organo_india/screens/transporter/transporter_dashboard_view.dart';
import 'package:organo_india/screens/transporter/transporter_find_pickup_view.dart';
import 'package:organo_india/screens/transporter/transporter_pickup_product_view.dart';
import 'package:organo_india/screens/transporter/transporter_register_view.dart';
import 'package:organo_india/screens/transporter/transporter_vehicle_add_view.dart';
import 'package:organo_india/screens/user_selection/user_selection_view.dart';
import 'package:organo_india/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organo India',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: SplashFirstView(),
      initialRoute: '/splash_first',
      //initialRoute: "/create_bid",
      routes: {
        '/splash_page': (context) => SplashPage(),
        '/splash_first': (context) => SplashFirstView(),
        '/splash_second': (context) => SplashSecondView(),
        '/splash_third': (context) => SplashThirdView(),
        '/splash_four': (context) => SplashFourView(),
        '/splash_five': (context) => SplashFiveView(),
        '/user_selection': (context) => UserSelectionView(),
        '/register': (context) => RegisterView(),
        '/otp': (context) => OtpView(),
        '/address_add': (context) => AddressAddView(),
        '/change_password': (context) => ChangePasswordView(),
        '/change_password_dialog': (context) => ChangePasswordDialogView(),
        '/bank_add': (context) => BankAddView(),
        '/home_farmer': (context) => HomeFarmerView(),
        '/create_bid': (context) => CreateBidView(),
        '/my_bid': (context) => MyBidsScreen(),
        '/bid_accept': (context) => BidsAcceptView(),
        '/product_details': (context) => ProductDetailsView(),
        '/home_buyer': (context) => HomeBuyerView(),
        '/buyer_bid_now_detail': (context) => BuyerBidNowDetailView(),
        '/transporter_register': (context) => TransporterRegisterView(),
        '/transporter_vehicle_add': (context) => TransporterVehicleAddView(),
        '/transporter_dashboard': (context) => TransporterDashboardView(),
        "/transport_request": (context) => TransportRequestView(),
        "/transport_find_pickup": (context) => TransporterFindPickupView(),
        "/transport_pickup_product": (context) =>
            TransporterPickupProductView(),
      },
    );
  }
}
