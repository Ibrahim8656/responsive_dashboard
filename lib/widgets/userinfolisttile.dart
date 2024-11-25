import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/utils/appimages.dart';
import 'package:flutter_svg/svg.dart';

class Userinfolisttile extends StatelessWidget {
   Userinfolisttile({super.key, required this.image, required this.title,required this.subtitle});
final String image ;String subtitle;String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage(image)),
     title: Text(title,style: AppStyles.stylesemibold20,),
     subtitle: Text(subtitle,style: AppStyles.styleregular16,),
    );
  }
}