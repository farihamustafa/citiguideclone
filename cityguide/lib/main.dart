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
      home: HomePage(),
      //TouristDetailsPage(image: "https://cdn.pixabay.com/photo/2019/08/11/18/59/icon-4399701_1280.png",),
    );
  }
}
