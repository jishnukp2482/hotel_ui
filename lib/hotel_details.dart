import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotel_detailss(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotel_detailss extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 400,
              width: double.infinity,
            child: const Image(image: AssetImage("assets/img/room.webp"),fit: BoxFit.cover,),
           foregroundDecoration:const BoxDecoration(
            color: Colors.black45,
           ),    
            ),
             Positioned(
            child:AppBar(title: const Text("DETAIL",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,),),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Crowne Plaza \nKochi, Kerala",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              
                            ),
                            child: const Center(child: Text("8.4/85 reviews",style: TextStyle(color: Colors.white,fontSize: 12),)),
                          ),
                        ),
                        IconButton(onPressed:(){} , icon: const Icon(Icons.favorite_outline_outlined,color: Colors.white,))
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                            
                                   Row(
                                    children: [
                                      const Icon(Icons.star,color: Colors.purple,),
                                      const Icon(Icons.star,color: Colors.purple,),
                                      const Icon(Icons.star,color: Colors.purple,),
                                      const Icon(Icons.star,color: Colors.purple,),
                                      const Icon(Icons.star_border,color: Colors.purple,),
              
                                    ],
                                  ),
                                
                                Row(
                                  children: [
                                    const Icon(Icons.location_on,color: Colors.grey,size: 15,),
                                    const Text('8 km to LuLu Mall',style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              const Text("\$200",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
                              const Text("/per night",style: TextStyle(color: Colors.grey,fontSize: 10),)
                            ],
                          ),
                        )
                      ],
                    ),
                  const SizedBox(height: 30,),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: 360,
                      child: ElevatedButton(onPressed: (){}, child: const Text("Book Now",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20) ),
                      ),),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("DESCRIPTION",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Text("Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,),textAlign: TextAlign.justify,),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,),
                    child: Text("Crowne Plaza Kochi, Kerala",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,),textAlign: TextAlign.justify,),
                  )
                  ],
                ),
              )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.white54,
        selectedItemColor: Colors.black,
        elevation: 0,
        items:[
          const BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search"),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "favourites"),
          const BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ] ),
    );
  }
}
