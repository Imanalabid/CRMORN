import 'package:crm/screens/projeects/projects_widgets/projects_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../route/route_helper.dart';
import '../../widgets/project_overview.dart';
import '../home/home_widgets/navigation_drawer_widget.dart';

class ProjectsPage  extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKEY=  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(children:[
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Row(
                      children: [
                        SizedBox(height:90,),
                        IconButton(
                          icon: Icon(Icons.menu_outlined),
                          onPressed: ()=>_scaffoldKEY.currentState?.openDrawer(), ),
                       Text("Projects",style: TextStyle(color: Colors.black87,fontSize: 20),),
                        Spacer(),
                      
                        Icon(Icons.add_alert_outlined,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Icon(Icons.face,color: Colors.black87,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      ]
                  ),
                ),
              ]

              ),
            ),
            Stack(

                children:[
                  Column(
                    children: [
                      //projects overview
                    ProjectOverView(),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Container(
                    
                           height: MediaQuery.of(context).size.height*0.34,
                             width: MediaQuery.of(context).size.width*0.95,
                             child: ProjectWidget(),
                           decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(1, 1),
                                  color:Colors.grey.withOpacity(0.1)     
                              )
                            ]
                        ),)
                    ],
                  ),

                ]
            ),
          ],
        ),
      ),


    );
  }
}