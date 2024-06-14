import 'package:flutter/material.dart';

class TouristDetailsPage extends StatelessWidget {
  const TouristDetailsPage({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 221, 227, 236),
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 8.0, bottom: 10.0),
            children: [
              SizedBox(
                height: size.height * 0.38,
                width: double.maxFinite,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sea of Peace",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "NY, USA",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "4.6",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.schedule_outlined,
                        size: 26,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "3 to 6 PM",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Contact Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
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
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Reviews",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(),
                    icon: const Icon(Icons.add_comment_outlined),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              /// Add Reviews Section HERE


              Container(
                height: 300,
                color: Colors.grey[200],
                child: const Center(
                  child: Text(
                    'Reviews Section',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.blue,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 8.0,
                ),
              ),
              child: const Text(
                "Get Direction",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
