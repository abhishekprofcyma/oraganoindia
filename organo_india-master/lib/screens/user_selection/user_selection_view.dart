import 'package:flutter/material.dart';
import 'package:organo_india/data/api/local/shared_prefrence.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';
import 'package:organo_india/utilities/user_type.dart';

import '../../constants.dart';

UserTypeSelected userTypeSelected = UserTypeSelected();

class UserSelection {
  final String userImage;
  final String userName;
  final VoidCallback onCallBack;

  UserSelection(this.userImage, this.userName, this.onCallBack);
}

class UserSelectionView extends StatefulWidget {
  @override
  _UserSelectionViewState createState() => _UserSelectionViewState();
}

class _UserSelectionViewState extends State<UserSelectionView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<UserSelection> userSelectionList = [
      UserSelection("assets/images/farmer.png", "Farmer", () {
        saveUserType(userTypeSelected.FarmerSelected());
        Navigator.pushNamed(context, '/register');
      }),
      UserSelection("assets/images/buyer.png", "Buyer", () {
        saveUserType(userTypeSelected.BuyerSelected());
        Navigator.pushNamed(context, "/register");
      }),
      UserSelection("assets/images/both.png", "Both", () {
        saveUserType("Both");
      }),
      UserSelection("assets/images/transporter.png", "Transporter", () {
        saveUserType(userTypeSelected.TransporterSelected());
        Navigator.pushNamed(context, "/register");
      })
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56 + 36),
        child: Container(
          color: kSecondaryColor,
          padding: const EdgeInsets.only(top: 26, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleView(
                radius: 36,
                color: Color(0xffB9E1C0),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.12,
          ),
          Text(
            "Select your profile",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Color(0xff2D2B2B)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: size.height / 900,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              children: List.generate(4, (index) {
                var user = userSelectionList[index];
                return InkWell(
                  onTap: user.onCallBack,
                  child: Column(
                    children: [
                      Image.asset(
                        user.userImage,
                        height: 180,
                      ),
                      Text(
                        user.userName,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Color(
                              0xff646464,
                            ),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
