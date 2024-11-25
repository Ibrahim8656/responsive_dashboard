
 import 'package:flutter/material.dart';

Widget  customgridveiw()=> SliverPadding(
          padding: const EdgeInsets.all(25.0),
          sliver: SliverGrid.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing:15,mainAxisSpacing: 15
          ), itemBuilder: (context,index)=>Container(color: Colors.grey,),
          ),
        );

        Widget Customlistveiw()=> SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,bottom: 15),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              childCount: 15,
            ),
          );
  Widget CustomDrawer()=>Drawer(
        child: Column(
          children: [
            DrawerHeader(child: 
            Icon(
              Icons.favorite_sharp
            ),
            ),
          ],
        ),
        backgroundColor: Colors.grey,
      );
     
       
  
