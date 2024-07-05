import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Define Review class (same as in TouristDetailsPage)
class Review {
  final String reviewer;
  final double rating;
  final String text;

  Review({required this.reviewer, required this.rating, required this.text});
}

class Hotel_details extends StatefulWidget {
  const Hotel_details({super.key});

  @override
  _Hotel_detailsState createState() => _Hotel_detailsState();
}

class _Hotel_detailsState extends State<Hotel_details> {
  // Sample reviews (replace with your actual data handling logic)
  List<Review> reviews = [
    Review(reviewer: "John Doe", rating: 4.5, text: "Great place!"),
    Review(reviewer: "Jane Smith", rating: 5.0, text: "Wonderful experience!"),
  ];

  // User input controllers
  double _userRating = 0;
  TextEditingController _reviewController = TextEditingController();

  // Function to submit a new review
  void _submitReview() {
    String reviewer = "User"; // Replace with actual user info if available
    double rating = _userRating;
    String text = _reviewController.text;

    // Create a new Review object
    Review newReview = Review(reviewer: reviewer, rating: rating, text: text);

    // Update state with new review
    setState(() {
      reviews.add(newReview);
      _userRating = 0;
      _reviewController.clear();
    });

    // Show a snackbar or any other feedback
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Review submitted!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

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
          ScrollDetails(),
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
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
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

  // Widget for the draggable scrollable sheet
  Widget ScrollDetails() {
    return DraggableScrollableSheet(
      builder: (context, scrollcontroller) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
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
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
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
                      Row(
                        children: [
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
                      IconContainer(
                          icon: Icons.local_parking, icontext: "Parking"),
                      IconContainer(icon: Icons.pool, icontext: "Pool"),
                      IconContainer(icon: Icons.games, icontext: "Games"),
                      IconContainer(
                          icon: Icons.local_laundry_service,
                          icontext: "Laundry"),
                      IconContainer(
                          icon: Icons.breakfast_dining, icontext: "Breakfast"),
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
                const SizedBox(height: 10),
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
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Write a Review"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RatingBar.builder(
                                  initialRating: _userRating,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 30,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      _userRating = rating;
                                    });
                                  },
                                ),
                                TextField(
                                  controller: _reviewController,
                                  maxLines: 3,
                                  decoration: const InputDecoration(
                                    labelText: 'Write your review...',
                                    alignLabelWithHint: true,
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _submitReview();
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Submit'),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.add_comment_outlined),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ...reviews.map((review) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  review.reviewer,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      index < review.rating
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(review.text),
                          ],
                        ),
                      ),
                    )),
                const SizedBox(height: 100),
              ],
            ),
          ),
        );
      },
    );
  }

  // Widget for the back button
  Widget buttonArrow(BuildContext context) {
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

  // Widget for individual feature icons
  Widget IconContainer({required IconData icon, required String icontext}) {
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
