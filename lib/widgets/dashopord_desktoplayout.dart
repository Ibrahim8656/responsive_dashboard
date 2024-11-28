import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:flutter_application_2/utils/appimages.dart';
import 'package:flutter_application_2/widgets/Gridveiw.dart';
import 'package:flutter_application_2/widgets/custombottom.dart';
import 'package:flutter_application_2/widgets/mysstepen.dart';
import 'package:flutter_application_2/widgets/userinfolisttile.dart';
import 'package:flutter_svg/svg.dart';

class DashopordDesktoplayout extends StatelessWidget {
  const DashopordDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          Container( color: Colors.white,
            height: MediaQuery.sizeOf(context).height,
            width: screenwidth*.2,
                  
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
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  
                  children: [
                    conainer3boxs(),
                      Container(height: 50,color: Colors.white,
                        child: Row(children: [
                                    Text("Quick Invoice",style:AppStyles.stylesemibold20),Spacer(),
                                    Text("+",style: AppStyles.stylesemibold16,)
                                  ],),
                      ),
                      Container(
                         color: Colors.white,height: 80,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder:(context,index)=> UserinfolisttileINlist(image: "assets/images/Frame2.png", title: "title", Subtiltle: "Subtiltle")
                        , separatorBuilder: (context,index)=> Container(), itemCount: 10),
                      )
                  ,Container(
                    color: Colors.white,
                    child: Row(children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Customer name",style: AppStyles.stylesemibold16,),
                      TextField(decoration:InputDecoration(
                         hintText:"type Customer name",
                        border: OutlineInputBorder(
                      )) )
                    ],)),
                    SizedBox(width: 20,),
                  Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Customer Email",style: AppStyles.stylesemibold16,),
                      TextField(
                        decoration:InputDecoration(
                          hintText:"type Customer Email",
                          border: OutlineInputBorder(
                      )) )
                    ],)),
                    ],),) 
                ,  SizedBox(height: 25,)
                    ,Container(
                    color: Colors.white,
                    child: Row(children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Item name",style: AppStyles.stylesemibold16,),
                      TextField(decoration:InputDecoration(
                         hintText:"type Item name",
                        border: OutlineInputBorder(
                      )) )
                    ],)),
                    SizedBox(width: 20,),
                  Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Item count",style: AppStyles.stylesemibold16,),
                      TextField(
                        decoration:InputDecoration(
                          hintText:"type Item count ",
                          border: OutlineInputBorder(
                      )) )
                    ],)),
                    ],),) 
              , SizedBox(height: 20,)
               ,Container(child: Row(
                children: [
                  Expanded(child: custombottom("Add more details",Colors.white,Color.fromARGB(255, 18, 115, 168)),),
                  SizedBox(width: 20,), Expanded(child: custombottom("Add more details",Color.fromARGB(255, 18, 115, 168),Colors.white)),
                ],
               ))
                 ],
                ),
              ),
            ),
            ),
            
               
          Container(
            width: screenwidth*.3 ,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [
                      Text("My Cart",style: AppStyles.stylesemibold20,)
                    ],),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image(image: AssetImage("assets/images/Group.png"))),
                  
                    Container(height: 80,
                      child: Expanded(
                        child: Row(children: [
                          Text("Transaction History",style: AppStyles.stylesemibold16,),
                           Spacer(),Text("See All",style: AppStyles.styleregular16,)
                        ],),
                      ),
                    ) 
                    ,
                   Image(image: AssetImage("assets/images/sss.png")),
                   Image(image: AssetImage("assets/images/cer.png")),
                   
                   
                  ],
                ),
              ),
            ),
          ),
       
        ],
      ),
      

    );
  }




  Container conainer3boxs() {
    return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            
                            Row(children: [
                              Text("All Expenses",style:AppStyles.stylesemibold20),Spacer(),
                              Text("monthly",style: AppStyles.stylesemibold16,)
                            ],),
                            threeboxs(),
                            
                          ],
                        ),
                      ),
                   ],
                  ),
                );
  }

  Row threeboxs() {
    return Row(children: [
                            Expanded(
                              child: Container(height:216,width: 190,
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
                                                                padding: const EdgeInsets.only(top: 20.0,bottom: 10),
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
                            SizedBox(width: 15,),
                            Expanded(
                                 child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color.fromARGB(255, 196, 196, 196),width: .5)),
                                height:216,width: 190,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                      
                                                            Container(child: IconButton(onPressed: (){},
                                                             icon: Image(image: AssetImage(Assets.imagesWallet2),),),),
                                                             Spacer(),Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                                                          
                                                              ],),
                      
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                                                                child: Text("Income",style: AppStyles.stylesemibold16,),
                                                              ),
                                                              Text("Aprel 2022",style: AppStyles.styleregular16,),
                                                              SizedBox(height: 20,),
                                                              Text('EGP 1500',style: AppStyles.stylesemibold20,),
                      
                                    ],
                                  ),
                                ),),
                              
                            )
                            ,SizedBox(width: 15,)
                           , Expanded(     child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color.fromARGB(255, 196, 196, 196),width: .5)),
                                height:216,width: 190,
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
                                                                padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                                                                child: Text("Income",style: AppStyles.stylesemibold16,),
                                                              ),
                                                              Text("Aprel 2022",style: AppStyles.styleregular16,),
                                                              SizedBox(height: 20,),
                                                              Text('EGP 1500',style: AppStyles.stylesemibold20,),
                      
                                    ],
                                  ),
                                ),),
                              )
                          ],);
  }
}