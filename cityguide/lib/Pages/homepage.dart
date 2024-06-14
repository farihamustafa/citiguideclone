import 'package:cityguide/components/reusable/placestile.dart';
import 'package:flutter/material.dart';

// class TouristPlacesModel {
//   final String name;
//   final String image;
//   TouristPlacesModel({
//     required this.name,
//     required this.image,
//   });
// }

// List<TouristPlacesModel> touristPlaces = [
//   TouristPlacesModel(name: "Mountain", image: "assets/icons/mountain.png"),
//   TouristPlacesModel(name: "Beach", image: "assets/icons/beach.png"),
//   TouristPlacesModel(name: "Forest", image: "assets/icons/forest.png"),
//   TouristPlacesModel(name: "City", image: "assets/icons/city.png"),
//   TouristPlacesModel(name: "Desert", image: "assets/icons/desert.png"),
// ];
// import 'package:travel_app/models/tourist_places_model.dart';

// class TouristPlaces extends StatelessWidget {
//   const TouristPlaces({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Chip(
//             label: Text(touristPlaces[index].name),
//             avatar: CircleAvatar(
//               backgroundImage: AssetImage(touristPlaces[index].image),
//             ),
//             backgroundColor: Colors.white,
//             elevation: 0.4,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           );
//         },
//         separatorBuilder: (context, index) =>
//             const Padding(padding: EdgeInsets.only(right: 10)),
//         itemCount: touristPlaces.length,
//       ),
//     );
//   }
// }

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
