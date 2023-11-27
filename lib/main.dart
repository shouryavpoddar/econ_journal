import 'package:econ_journal/AllArticlesPage.dart';
import 'package:flutter/material.dart';

import 'IntroductionPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Habit Gym",
      home: IntroductionPage(),
      debugShowCheckedModeBanner: false,
    );;
  }
}

