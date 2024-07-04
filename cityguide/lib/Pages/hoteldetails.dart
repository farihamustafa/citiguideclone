import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hotel_details extends StatelessWidget {
  const Hotel_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child: Image.network(
              "https://image-tc.galaxy.tf/wijpeg-4unbvkgdsxckbiqd2l3ukpjdb/warwick-new-york-front-view.jpg",
              height: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          buttonArrow(context),
          ScrollDetails()
        ],
      ),
    );
  }
}

ScrollDetails() {
  return DraggableScrollableSheet(
      // initialChildSize: 0.8,
      // maxChildSize: 1.0,
      // minChildSize: 0.4,
      builder: (context, scrollcontroller) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
         color: Colors.blue[50],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SingleChildScrollView(
        controller: scrollcontroller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 35,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name of Hotel",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(children: [
                          Text(
                            "State/",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "\$280",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text("Per day")
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 45,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "What they offer",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  IconContainer(icon: Icons.bed, icontext: "Twin Bed"),
                  IconContainer(icon: Icons.wifi, icontext: "Wifi"),
                  IconContainer(icon: Icons.local_parking, icontext: "Parking"),
                  IconContainer(icon: Icons.pool, icontext: "Pool"),
                  IconContainer(icon: Icons.games, icontext: "Games"),
                  IconContainer(
                      icon: Icons.local_laundry_service, icontext: "Laundry"),
                  IconContainer(
                      icon: Icons.breakfast_dining, icontext: "Breakfast")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tristique, risus at volutpat pulvinar, justo sem accumsan ligula, nec dignissim neque risus eu eros. Sed aliquam augue diam, ut ullamcorper metus ullamcorper id. ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(185, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  });
}

buttonArrow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,
        width: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

IconContainer({required IconData icon, required String icontext}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.black54,
              ),
              Text(
                icontext,
                style: const TextStyle(color: Colors.black54, fontSize: 10),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
