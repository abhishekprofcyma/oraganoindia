import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordDialogView extends StatefulWidget {
  @override
  _ChangePasswordDialogViewState createState() =>
      _ChangePasswordDialogViewState();
}

class _ChangePasswordDialogViewState extends State<ChangePasswordDialogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6A6A6).withOpacity(0.5),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: ()=>Navigator.pushNamed(context, '/signup'),
                      child: SvgPicture.asset("assets/icons/close.svg"))),
              SizedBox(
                height: 16,
              ),
              SvgPicture.asset("assets/icons/profile_created.svg"),
              SizedBox(
                height: 8,
              ),
              Text(
                "Your Password Has Been change successfully !",
                style: Theme.of(context)
                    .textTheme
                    .headline6?.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
