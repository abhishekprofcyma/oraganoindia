import 'package:flutter/material.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class TransporterPickupProductView extends StatefulWidget {
  @override
  _TransporterPickupProductViewState createState() =>
      _TransporterPickupProductViewState();
}

class _TransporterPickupProductViewState
    extends State<TransporterPickupProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(true),
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              color: Color(0xffF5F5F5),
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              child: Flexible(
                child: Row(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1437252611977-07f74518abd7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hlYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                      width: 120,
                      height: 80,
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Potato",
                              style: TextStyle(color: Color(0xff000000),fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                          ],
                        ),
                        Text("Qty",style: TextStyle(fontSize: 12),),
                        Text("From",style: TextStyle(fontSize: 12),),
                        Text("To",style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
