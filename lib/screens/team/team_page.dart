import 'package:crm/route/route_helper.dart';
import 'package:crm/screens/team/widgets/team_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_widgets/navigation_drawer_widget.dart';

class TeamPage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKEY=  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKEY,
      drawer: NavigationDrawerWidget(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), // set your desired background image
            fit: BoxFit.cover, // set the fit of the image
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*0.05,),  
              Row( 
                children: [
                  SizedBox(width:MediaQuery.of(context).size.width*0.069,),  
                   IconButton(
                          icon: Icon(Icons.menu_outlined),
                          onPressed: ()=>_scaffoldKEY.currentState?.openDrawer(), ),
                  SizedBox(width:MediaQuery.of(context).size.width*0.005,),  
                  Text("Team",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                ],
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.04,),  
              Container(
                height: MediaQuery.of(context).size.height*0.045,
                width:MediaQuery.of(context).size.width*0.87 ,
                child: Row(
                  children: [
                    SizedBox(width:MediaQuery.of(context).size.width*0.04,), 
                    Icon(Icons.search_outlined,color:Colors.white),
                  ],
                ),  
                decoration: BoxDecoration(
                  color:Colors.teal.shade200,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(1, 1),
                      color:Colors.grey.withOpacity(0.1)
                    )
                  ]
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.04,),
              TeamWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
