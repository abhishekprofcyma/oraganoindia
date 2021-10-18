import 'package:flutter/material.dart';

class OrganoTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;

  const OrganoTextField({Key? key, required this.hint, required this.isPassword}) : super(key: key);

  @override
  _OrganoTextFieldState createState() => _OrganoTextFieldState();
}

class _OrganoTextFieldState extends State<OrganoTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(
          horizontal: 8, vertical: 0),
      decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
                color: Color(0xff919191), width: 1),
          ),
          color: Colors.white),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Bank Account Number *",
            border: InputBorder.none,
            hintStyle: TextStyle(
                color: Color(0xff646464),
                decorationStyle: TextDecorationStyle.wavy)),
      ),
    );
  }
}
