import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/widgets/Gridveiw.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState>scaffoldkey=GlobalKey();
    return LayoutBuilder(builder: (context,constrains){
      var mywidth=constrains.maxWidth;
      if(constrains.maxWidth<=500){
 return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton( onPressed: () { 
          scaffoldkey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu,)),
      ),
      drawer: CustomDrawer(),
       body: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(child: Center(child: Text("Titele",style: TextStyle(fontSize: 16*(mywidth/500)),))),
       customgridveiw(),
      Customlistveiw() ],
      )
       
    );
      }else return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
        leading: IconButton( onPressed: () { 
          scaffoldkey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu,),),
      ),
      drawer: CustomDrawer(),
       body:
        CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Center(child: Text("Titele",style: TextStyle(fontSize: 16*(mywidth/500)),))),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 200,
          child: ListView.builder(
            itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 150,width: 150,color: Colors.grey,),
          ),itemCount: 15,scrollDirection:Axis.horizontal,),
        ),
      ),
      Customlistveiw() ],
      )
       );
    },);
   
  }
}