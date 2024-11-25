import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/utils/appimages.dart';
import 'package:flutter_application_2/widgets/Gridveiw.dart';
import 'package:flutter_application_2/widgets/userinfolisttile.dart';
import 'package:flutter_svg/svg.dart';

class DashopordDesktoplayout extends StatelessWidget {
  const DashopordDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.sizeOf(context).height,
  
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      
                      child:Center(child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(image: AssetImage(Assets.imagesGallery),),
                      )),
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Image(image: AssetImage("assets/images/Frame2.png" )),
                     title: Text("title",style: AppStyles.stylesemibold20,),
                     subtitle: Text("subtitle",style: AppStyles.styleregular16,),
                    ),
                    Userinfolisttile(image:"assets/images/Frame2.png" , title: 'hi', subtitle: 'mohamed', ),
                    Userinfolisttile(image: Assets.imagesCategory2, title: 'hi', subtitle: 'mohamed', ),
                    Userinfolisttile(image: Assets.imagesCategory2, title: 'hi', subtitle: 'mohamed', ),
                    Userinfolisttile(image: Assets.imagesChart2, title: 'hi', subtitle: 'mohamed', ),
                    Userinfolisttile(image: Assets.imagesChart2, title: 'hi', subtitle: 'mohamed', ),
                    
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(children: [
                      Text("All Expenses",style:AppStyles.stylesemibold20),Spacer(),
                      Text("monthly",style: AppStyles.stylesemibold16,)
                    ],),
                    Row(children: [
                      Expanded(
                        child: Container(height:216,width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                
                                                      Container(child: IconButton(onPressed: (){},
                                                       icon: Image(image: AssetImage(Assets.imagesWallet2,),),),),
                                                       Spacer(),Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                                    
                                                        ],),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 30.0,bottom: 10),
                                                          child: Text("Income",style: TextStyle(
                               color: Colors.white,
                           fontSize: 16,
                         fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
  )),
                                                        ),
                                                        Text("Aprel 2022",style: TextStyle(
 color: Colors.white,
 fontSize: 16,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w400,
  )),
                                                        SizedBox(height: 20,),
                                                        Text('EGP 1500',style: TextStyle(
 color: Colors.white,
 fontSize: 20,
 fontFamily: "Montserrat",
 fontWeight: FontWeight.w600,
  ),),

                              ],
                            ),
                          )),
                      ),
                      Expanded(
                           child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromARGB(255, 196, 196, 196),width: .5)),
                          height:216,width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                
                                                      Container(child: IconButton(onPressed: (){},
                                                       icon: Image(image: AssetImage(Assets.imagesWallet2),),),),
                                                       Spacer(),Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                                                    
                                                        ],),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 30.0,bottom: 10),
                                                          child: Text("Income",style: AppStyles.stylesemibold16,),
                                                        ),
                                                        Text("Aprel 2022",style: AppStyles.styleregular16,),
                                                        SizedBox(height: 20,),
                                                        Text('EGP 1500',style: AppStyles.stylesemibold20,),

                              ],
                            ),
                          ),),
                        
                      )


                     , Expanded(     child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromARGB(255, 196, 196, 196),width: .5)),
                          height:216,width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                
                                                      Container(child: IconButton(onPressed: (){},
                                                       icon: Image(image: AssetImage(Assets.imagesWallet2),),),),
                                                       Spacer(),Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                                                    
                                                        ],),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 30.0,bottom: 10),
                                                          child: Text("Income",style: AppStyles.stylesemibold16,),
                                                        ),
                                                        Text("Aprel 2022",style: AppStyles.styleregular16,),
                                                        SizedBox(height: 20,),
                                                        Text('EGP 1500',style: AppStyles.stylesemibold20,),

                              ],
                            ),
                          ),),
                        )
                    ],)
                  ],
                ),
              ),
            )),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            )),
       
        ],
      ),

    );
  }
}