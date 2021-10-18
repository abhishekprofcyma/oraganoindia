import 'package:flutter/material.dart';
import 'package:organo_india/screens/widgets/organo_edittext.dart';

class BuyerDashboardView extends StatefulWidget {
  @override
  _BuyerDashboardViewState createState() => _BuyerDashboardViewState();
}

class _BuyerDashboardViewState extends State<BuyerDashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 210,
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Crop",
                    border: const OutlineInputBorder(),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    hintStyle: TextStyle(
                        color: Color(0xff646464),
                        decorationStyle: TextDecorationStyle.wavy)),
              ),
              SizedBox(height: 12,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Pin Code",
                    border: const OutlineInputBorder(),
                    isDense: true,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    hintStyle: TextStyle(
                        color: Color(0xff646464),
                        decorationStyle: TextDecorationStyle.wavy)),
              ),
              SizedBox(height: 12,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Location",
                    border: const OutlineInputBorder(),
                    isDense: true,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    hintStyle: TextStyle(
                        color: Color(0xff646464),
                        decorationStyle: TextDecorationStyle.wavy)),
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width,
                  child: MaterialButton(onPressed: (){},child: Text("Search",style: TextStyle(color: Colors.white),),color: Color(0xff429450),))
            ],
          ),
        ),
      ),
    );
  }
}
