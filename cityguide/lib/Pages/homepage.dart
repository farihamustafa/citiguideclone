import 'package:cityguide/components/reusable/placestile.dart';
import 'package:cityguide/components/reusable/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Hotels", image: "assets/icons/mountain.png"),
  TouristPlacesModel(
      name: "Popoular attractions", image: "assets/icons/beach.png"),
  TouristPlacesModel(name: "Restaurants", image: "assets/icons/beach.png"),
  TouristPlacesModel(name: "Others", image: "assets/icons/desert.png"),
];

myButon({required Function, required buttontext}) {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[300],
      ),
      onPressed: () {
        Function();
      },
      child: Text(
        buttontext,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Guide'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  border: InputBorder.none,
                  hintText: 'Search Cities and Places',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                myButon(
                    Function: () {
                      // showModalBottomSheet(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return ListView(
                      //         children: const [
                      //           PlacesTile(
                      //             name: "Hilton Thai",
                      //             city: "LA",
                      //             rating: 4.3,
                      //             price: 195,
                      //             imagelink:
                      //                 "https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      //           ),
                      //           PlacesTile(
                      //             name: "Four Seasons",
                      //             city: "LA",
                      //             rating: 4.7,
                      //             price: 450,
                      //             imagelink:
                      //                 "https://images.pexels.com/photos/1287460/pexels-photo-1287460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      //           ),
                      //           PlacesTile(
                      //             name: "Ritz Carlton",
                      //             city: "LA",
                      //             rating: 4.5,
                      //             price: 345,
                      //             imagelink:
                      //                 "https://images.pexels.com/photos/5007356/pexels-photo-5007356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      //           ),
                      //           PlacesTile(
                      //             name: "Marriott",
                      //             city: "LA",
                      //             rating: 4.3,
                      //             price: 145,
                      //             imagelink:
                      //                 "https://images.pexels.com/photos/188030/pexels-photo-188030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      //           ),
                      //         ],
                      //       );
                      //     });
                    },
                    buttontext: "Hotels"),
                myButon(Function: () {}, buttontext: "Restaurants"),
                myButon(Function: () {}, buttontext: "Popoular attractions"),
                myButon(Function: () {}, buttontext: "Others")
              ],
              // itemBuilder: (context, index) {
              //   return Container(
              //       child: Padding(
              //     padding: const EdgeInsets.all(3),
              //     // child: ElevatedButton(
              //     //     style: ElevatedButton.styleFrom(
              //     //       backgroundColor: Colors.blue[300],
              //     //     ),
              //     //     onPressed: () {},
              //     //     child: Text(
              //     //       touristPlaces[index].name,
              //     //       style: TextStyle(color: Colors.white),
              //     //     )),
              //   ));
              // },
              // separatorBuilder: (context, index) =>
              //     const Padding(padding: EdgeInsets.only(right: 10)),
              //itemCount: touristPlaces.length,
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                PlacesTile(
                  name: "Hilton Thai",
                  city: "LA",
                  rating: 4.3,
                  price: 195,
                  imagelink:
                      "https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                PlacesTile(
                  name: "Four Seasons",
                  city: "LA",
                  rating: 4.7,
                  price: 450,
                  imagelink:
                      "https://images.pexels.com/photos/1287460/pexels-photo-1287460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                PlacesTile(
                  name: "Ritz Carlton",
                  city: "LA",
                  rating: 4.5,
                  price: 345,
                  imagelink:
                      "https://images.pexels.com/photos/5007356/pexels-photo-5007356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                PlacesTile(
                  name: "Marriott",
                  city: "LA",
                  rating: 4.3,
                  price: 145,
                  imagelink:
                      "https://images.pexels.com/photos/188030/pexels-photo-188030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              label: 'Places',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
