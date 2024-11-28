import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';

Widget custombottom(String text,Color loon,Color textcolor)=>Container(
  decoration: BoxDecoration(  color: loon,
  borderRadius: BorderRadius.circular(10)),

height: 60,
child: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: textcolor,fontSize: 16),)),
);