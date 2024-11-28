import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/utils/appimages.dart';
import 'package:flutter_svg/svg.dart';

class Userinfolisttile extends StatelessWidget {
   Userinfolisttile( {super.key, required this.image, required this.title,});
final String image ;String title;

  @override
  Widget build(BuildContext context) {
    return Container(width: 250,
      child: ListTile(
        leading: Image(image: AssetImage(image),height: 30,width: 30,),
       title: Text(title,maxLines: 1,style: AppStyles.stylesemibold16,), 
      ),
    );
  }
}


class UserinfolisttileINlist extends StatelessWidget {
   UserinfolisttileINlist( {super.key, required this.image, required this.title,required this.Subtiltle});
final String image ;String title;String Subtiltle;

  @override
  Widget build(BuildContext context) {
    return Container(width: 250,
      child: ListTile(
        leading: Image(image: AssetImage(image),height: 30,width: 30,),
       title: Text(title,maxLines: 1,style: AppStyles.stylesemibold16,), 
       subtitle: Text(Subtiltle,style: AppStyles.styleregular16,),
      ),
    );
  }
}