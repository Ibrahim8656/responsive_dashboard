import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/addaptivelayout.dart';
import 'package:flutter_application_2/widgets/Mobilelayout.dart';
import 'package:flutter_application_2/widgets/dashopord_desktoplayout.dart';

class Dashbourd extends StatelessWidget {
  const Dashbourd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Addaptivelayout((context)=>Mobilelayout()
    , (context)=>SizedBox(),(context)=> DashopordDesktoplayout());
  }
}