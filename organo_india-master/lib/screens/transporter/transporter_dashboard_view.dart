import 'package:flutter/material.dart';
import 'package:organo_india/screens/widgets/custom_app_bar_view.dart';

class TransportorItem{
  final String image;
  final String title;
  final Function() onclick;

  TransportorItem(this.image, this.title, this.onclick);
}


class TransporterDashboardView extends StatefulWidget {
  @override
  _TransporterDashboardViewState createState() =>
      _TransporterDashboardViewState();
}

class _TransporterDashboardViewState extends State<TransporterDashboardView> {



  @override
  Widget build(BuildContext context) {
    List<TransportorItem> items = [
      TransportorItem("assets/images/ic_transport_request.png", "View Transport Request", (){
        Navigator.pushNamed(context, "/transport_request");
      }),
      TransportorItem("assets/images/ic_find_pickup.png", "Find Onroute Pickup", (){
        Navigator.pushNamed(context, "/transport_find_pickup");
      }),
      TransportorItem("assets/images/ic_pickup_history.png", "Pickup History", (){
        Navigator.pushNamed(context, "/transport_request");
      }),
      TransportorItem("assets/images/ic_transport_route.png", "Create Transport Route", (){
        Navigator.pushNamed(context, "/transport_request");
      }),
    ];
    return Scaffold(
      appBar: customAppBar(true),
      body: Column(
        children: [
         userInfo(),
          SizedBox(height: 16,),
          Flexible(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 2,children: List.generate(4, (index) {
              return InkWell(
                onTap: items[index].onclick,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE6E6E6)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(items[index].image),
                      SizedBox(height: 8,),
                      Text(items[index].title,style: TextStyle(color: Color(0xff3F3F3F),fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              );
            }),),
          )
        ],
      ),
    );
  }
  Widget userInfo(){
    return  Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Color(0xff5CB96C),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"),
            radius:40,
          ),
          SizedBox(width: 8,),
          Text("Olive Yew",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
