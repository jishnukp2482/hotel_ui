import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: false,
      floating: true,
      toolbarHeight: 60,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello @BruceWayne",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("Find your favourite hotel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
        ],  ),
        Container(
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/img/hotelbookingimages/Bruce.jpg"),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.grey.shade500  )
            ]
          ),
        ),
        ],
      ),
    );
  }
}
