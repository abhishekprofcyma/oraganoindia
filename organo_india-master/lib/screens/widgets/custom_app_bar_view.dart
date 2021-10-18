import 'package:flutter/material.dart';

import '../../constants.dart';
import 'circle_view.dart';

PreferredSizeWidget customAppBar([bool? isTransporter]){
  return PreferredSize(
    preferredSize: Size(double.infinity, 56 + 36),
    child: Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.only(top: 26, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isTransporter??false ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"),),
          ): IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          CircleView(
            radius: 36,
            color: Color(0xffB9E1C0),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              )),
        ],
      ),
    ),
  );
}



