     import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/utils/appimages.dart';
import 'package:flutter_application_2/widgets/userinfolisttile.dart';

Widget tptp()=> Column(
                children: [
                  Container(
                    
                    child:Center(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage(Assets.imagesGallery),),
                    )),
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Image(image: AssetImage("assets/images/Frame2.png" ),height: 30,width: 30,),
                   title: Text("title",style: AppStyles.stylesemibold20,),
                   subtitle: Text("subtitle",style: AppStyles.styleregular16,),
                  ),
                  Userinfolisttile(image:"assets/images/Frame2.png" , title: 'Dashboard' ),
                  SizedBox(height: 20,),
                  Userinfolisttile(image: Assets.imagesCategory2, title: 'My Transaction' ),
                    SizedBox(height: 20,),
                  Userinfolisttile(image: Assets.imagesCategory2, title: 'Statistics' ),
                    SizedBox(height: 20,),
                  Userinfolisttile(image: Assets.imagesChart2, title: 'Wallet Account' ),
                    SizedBox(height: 20,),
                  Userinfolisttile(image: Assets.imagesChart2, title: 'My Investments' ),
                    SizedBox(height: 20,),
                  
                ],
              );
             