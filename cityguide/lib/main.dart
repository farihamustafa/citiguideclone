import 'package:cityguide/Pages/backgroundui.dart';
import 'package:cityguide/Pages/homepage.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/Pages/profile_screen.dart';
import 'package:cityguide/Pages/welcomescreen.dart';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileSettingsPage(),
    );
  }
}
