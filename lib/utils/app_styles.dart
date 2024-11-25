import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle styleregular16=TextStyle(
 color: Color.fromARGB(255, 92, 92, 92),
 fontSize: 16,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w400,
  );
   static const TextStyle stylemedium16=TextStyle(
 color: Color(0xFF064060),
 fontSize: 16,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w500,
  );
  static const TextStyle stylesemibold16=TextStyle(
 color: Color(0xFF064060),
 fontSize: 16,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w600,
  );
   static const TextStyle stylesemibold20=TextStyle(
 color: Color(0xFF064060),
 fontSize: 20,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w600,
  );
}