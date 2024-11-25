import 'package:flutter/material.dart';

class Addaptivelayout extends StatelessWidget {
  const Addaptivelayout(this.mobilelayout, this.taplitlayout, this.desktoplayout,{super.key} );
final mobilelayout,taplitlayout,desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth<600)return mobilelayout(context);
      else if (constrains.maxWidth<900)return taplitlayout(context);
      else return desktoplayout(context);
    },
    );
  } 
}