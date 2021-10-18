import 'package:flutter/material.dart';
import 'package:organo_india/constants.dart';
import 'package:organo_india/repo.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';
import 'package:organo_india/utilities/otp_random_num.dart';
import 'package:organo_india/screens/otp/otp_view.dart';

Repo repo = Repo();

class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();

  var otpRandom = OtpRandomNumber().RandomNumer();
  TextEditingController mobileController = TextEditingController();

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
          children: [
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
                controller: mobileController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                    hintText: "Mobile No.",
                    counterText: "",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Color(0xff646464),
                        decorationStyle: TextDecorationStyle.wavy)),
              ),
            ),
            Spacer(),
            Container(
                width: size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Map<String, String> map = Map();
                    map['mobile_number'] = mobileController.text;
                    map['otp'] = otpRandom;
                    repo.sendOTP(context, map).then((value) {
                      if (value.success == true) {
                        print("otp send");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpView(
                                    otp: otpRandom,
                                    mobileNumber: mobileController.text,
                                  )),
                        );
                      } else {
                        print("failed");
                      }
                    });
                  },
                  child: Text(
                    "Next",
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
