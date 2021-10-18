import 'package:flutter/material.dart';

class OrganoEditTextView extends StatefulWidget {
  final String? title;
  final String hint;

  const OrganoEditTextView({Key? key, this.title,required this.hint}) : super(key: key);

  @override
  _OrganoEditTextViewState createState() => _OrganoEditTextViewState();
}

class _OrganoEditTextViewState extends State<OrganoEditTextView> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
        decoration: InputDecoration(
            hintText: widget.hint,
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
            hintStyle: TextStyle(
                color: Color(0xff646464),
                decorationStyle: TextDecorationStyle.wavy)),
      ),
    );
  }
}
