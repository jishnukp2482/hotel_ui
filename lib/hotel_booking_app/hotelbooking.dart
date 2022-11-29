import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hotel_ui/hotel_booking_app/components/appbar.dart';
import 'package:hotel_ui/hotel_booking_app/components/popularhotels.dart';
import 'package:hotel_ui/hotel_booking_app/components/searchbar.dart';
import 'package:hotel_ui/hotel_booking_app/components/hotelpackages.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: hotelbooking(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotelbooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
         appbar(),
         SliverList(delegate: SliverChildListDelegate(
          [
            searchbar(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Popular Hotels",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            popularhotels(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Hotel Packages",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(padding:EdgeInsets.only(right: 10),child: TextButton(onPressed: (){}, child: Text("View more",style: TextStyle(fontSize: 15,),)))
              ],
            ),
            SizedBox(height: 10,),
            hotelpackages(),
          ]
         )),
         
         
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

        ] ),
    );
  }
}
