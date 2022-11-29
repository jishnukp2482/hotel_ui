import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hotelpackages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        roompackage(
            roomimage: 'assets/img/room.webp',
            hotelname: "Crown Plaza",
            hoteldetails: 'A five star hotel in Kochi',
            hotelprice: '\$1000 / night'),
        roompackage(
            roomimage: 'assets/img/hotelbookingimages/room2.jpg',
            hotelname: "Hotel Taj",
            hoteldetails: 'A five star hotel in Kochi',
            hotelprice: '\$1200 / night'),
        roompackage(
            roomimage: 'assets/img/hotelbookingimages/room3.jpg',
            hotelname: "Hotel Raw",
            hoteldetails: 'A four star hotel in Kakkanad',
            hotelprice: '\$800 / night'),
        roompackage(
            roomimage: 'assets/img/hotelbookingimages/room4.jpg',
            hotelname: "Hotel Diamond ",
            hoteldetails: 'A four star hotel in Edapalli',
            hotelprice: '\$850 / night'),
      ]),
    );
  }
}

class roompackage extends StatelessWidget {
  final String roomimage;
  final String hotelname;
  final String hoteldetails;
  final String hotelprice;
  roompackage(
      {required this.roomimage,
      required this.hotelname,
      required this.hoteldetails,
      required this.hotelprice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
      child: Container(
        
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 8,
              offset: Offset(2, 4),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
           Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(roomimage), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelname,
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      hoteldetails,
                      style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      hotelprice,
                      style: TextStyle(color: Colors.purple),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Wrap(
                          spacing: 5,
                          alignment: WrapAlignment.center,
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              FontAwesomeIcons.car,
                              color: Colors.purple,
                              size: 17,
                            ),
                            Icon(
                              FontAwesomeIcons.radio,
                              color: Colors.purple,
                              size: 17,
                            ),
                            Icon(
                              FontAwesomeIcons.wineGlass,
                              color: Colors.purple,
                              size: 17,
                            ),
                            Icon(
                              FontAwesomeIcons.wifi,
                              color: Colors.purple,
                              size: 17,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,)
                  ]),
            ],
          ),
        
          Positioned(
            right: 0,
            top: 40,
            
              child: SizedBox(
                height: 40,
                width: 70,
                child: ElevatedButton(onPressed: (){}, child:  Text("Book",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  )
                ),),
              )
            
          )
        ]),
        
      ),
      
    );
  }
}
