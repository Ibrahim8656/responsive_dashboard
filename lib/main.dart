import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Home.dart';
import 'package:flutter_application_2/view/dashbourd.dart';
import 'package:flutter_application_2/widgets/Mobilelayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Dashbourd()
    );
  }
}