import 'package:flutter/material.dart';
import 'package:hotel_ui/hotel_details.dart';

void main() {
  runApp(MaterialApp(
    home: hotelui(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotelui extends StatefulWidget {
  @override
  State<hotelui> createState() => _hoteluiState();
}

class _hoteluiState extends State<hotelui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: true,
          leading: const Icon(Icons.menu),
          elevation: 0,
          actions: [
            const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.favorite_outline)),
          ],
          title: const Center(
              child: Text(
            "Type Your Location",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
          bottom: AppBar(
            elevation: 0,
            title: Center(
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      hintText: "Palakkad,kerala",
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  mybutton(
                    iconData: Icons.hotel,
                    buttonname: "Hotel",
                    backgroundcolor: Colors.pink,
                  ),
                  mybutton(
                      iconData: Icons.restaurant,
                      buttonname: "Restaurent",
                      backgroundcolor: Colors.blue),
                  mybutton(
                      iconData: Icons.local_cafe,
                      buttonname: "Cafe",
                      backgroundcolor: Colors.orange),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => hotel_detailss())));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 900,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage("assets/img/hotel1.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            const Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.white,
                                  size: 20,
                                )),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  height: 30,
                                  width: 40,
                                  color: Colors.white,
                                  child: const Center(
                                      child: Text(
                                    "\$40",
                                    style: TextStyle(color: Colors.black),
                                  )),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Awesome room near Palakkad",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const Text(
                                "Palakkad,Kerala",
                                style: TextStyle(fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star_outlined,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star_outlined,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star_outlined,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star_outlined,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star_outlined,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const Text(
                                      '(220 reviews)',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ]))
      ],
    ));
  }
}

class mybutton extends StatelessWidget {
  final IconData iconData;
  final String buttonname;
  final Color backgroundcolor;
  mybutton(
      {required this.iconData,
      required this.buttonname,
      required this.backgroundcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(
              buttonname,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
