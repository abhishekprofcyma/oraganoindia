import 'package:flutter/material.dart';
import 'package:organo_india/data/api/local/shared_prefrence.dart';
import 'package:organo_india/screens/buyer/home_buyer_view.dart';
import 'package:organo_india/screens/farmers/home_farmer_view.dart';
import 'package:organo_india/screens/register/register_view.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';
import 'package:organo_india/screens/transporter/transporter_dashboard_view.dart';
import 'package:organo_india/utilities/user_type.dart';

import '../../constants.dart';

UserTypeSelected userTypeSelected = UserTypeSelected();

class OtpView extends StatefulWidget {
  OtpView({this.otp, this.mobileNumber});
  final otp;
  final mobileNumber;
  @override
  _OtpViewState createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();

  var otpVerify;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.otp);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Text(widget.otp),
            Text(widget.mobileNumber),
            SizedBox(
              height: size.height * 0.12,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Color(0xff919191), width: 1),
                  ),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)],
                  color: Colors.white),
              child: TextFormField(
                onChanged: (value) {
                  otpVerify = value;
                },
                decoration: InputDecoration(
                  hintText: "  __  __  __  __",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "One time password sent to your mobile number",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Color(0xff646464)),
            ),
            SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(
                text: 'OTP Expires in ',
                style: TextStyle(
                    color: Color(0xffAAAAAA), fontWeight: FontWeight.w100),
                children: <InlineSpan>[
                  TextSpan(
                    text: '2 Minutes',
                    style: TextStyle(fontSize: 16, color: Color(0xff5CB96C)),
                  )
                ])),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Resend OTP"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff5CB96C)),
              ),
            ),
            Spacer(),
            Container(
                width: size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () async {
                    Map<String, String> map = Map();
                    map['mobile_number'] = widget.mobileNumber;
                    repo.registerUser(context, map).then((value) {
                      if (value.success == true) {
                        saveToken(value.data.token);
                        // saveLogin(value.success);
                        print('registered successfully');
                      } else {
                        print('register faild');
                      }
                    });
                    if (widget.otp == otpVerify) {
                      print('otp verified');
                      String usertype = await getUserType();
                      if (usertype == userTypeSelected.FarmerSelected()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeFarmerView()),
                        );
                      } else if (usertype == userTypeSelected.BuyerSelected()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeBuyerView()),
                        );
                      } else if (usertype ==
                          userTypeSelected.TransporterSelected()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransporterDashboardView()),
                        );
                      }
                    } else {
                      print('otp incorrect');
                    }
                  },
                  child: Text(
                    "Register",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white),
                  ),
                )),
            SizedBox(height: kDefaultPadding)
          ],
        ),
      ),
    );
  }
}
