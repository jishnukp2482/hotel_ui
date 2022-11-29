import 'package:flutter/material.dart';

class searchbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
    padding:EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
    child: Container(
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:[ BoxShadow(
          offset: Offset.fromDirection(1,5),
          color: Colors.grey.shade400,
          blurRadius: 5,
        ),]
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search for hotel",
          hintStyle: TextStyle(color:Colors.grey.shade400),
          prefixIcon: Icon(Icons.search_rounded,color: Colors.grey.shade400,size: 25,),
          fillColor: Colors.white,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,width: .2),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            
            borderSide: BorderSide(color: Colors.black,width: .2),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue,width: .2),
          )
        ),
      ),
    ) );
  }

}