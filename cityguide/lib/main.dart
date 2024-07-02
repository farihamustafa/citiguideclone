import 'package:cityguide/Pages/backgroundui.dart';
import 'package:cityguide/Pages/homepage.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/Pages/loginpage.dart';
import 'package:cityguide/Pages/tourist_details.dart';
import 'package:cityguide/Pages/welcomescreen.dart';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TouristDetailsPage(
        image:
            "https://images.pexels.com/photos/188030/pexels-photo-188030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      //TouristDetailsPage(image: "https://cdn.pixabay.com/photo/2019/08/11/18/59/icon-4399701_1280.png",),
    );
  }
}
