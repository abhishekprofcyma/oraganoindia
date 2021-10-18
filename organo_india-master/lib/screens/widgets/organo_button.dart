import 'package:flutter/material.dart';

import '../../constants.dart';

class OrganoButtonView extends StatefulWidget {
  final String text;
  final Function() onclick;
  final bool? isBordered;
  final bool? isFilled;

  const OrganoButtonView(
      {Key? key,
      required this.text,
      required this.onclick,
      this.isBordered = false,
      this.isFilled = false})
      : super(key: key);

  @override
  _OrganoButtonViewState createState() => _OrganoButtonViewState();
}

class _OrganoButtonViewState extends State<OrganoButtonView> {
  @override
  Widget build(BuildContext context) {
    return widget.isFilled!
        ? ElevatedButton(
            onPressed: () {},
            child: Text("Submit",
                style: Theme.of(context)
                    .textTheme
                    .headline6?.copyWith(color: Colors.white)))
        : OutlinedButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: Theme.of(context)
                  .textTheme
                  .headline6?.copyWith(color: kPrimaryColor),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: kPrimaryColor),
            ),
          );
  }
}
