

import 'package:crm/screens/projeects/projects_widgets/tabbar_widget_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../route/route_helper.dart';
import '../home/home_widgets/navigation_drawer_widget.dart';

class ProjectdetailsPage extends StatefulWidget {
  @override
  State<ProjectdetailsPage> createState() => _ProjectdetailsPageState();
}
class _ProjectdetailsPageState extends State<ProjectdetailsPage> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 3, vsync: this);
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
              children: [

                Stack(
                    children:[
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.4,
                            width:double.maxFinite ,
                            child: Padding(
                              padding:  EdgeInsets.only(left: 20,right: 20,top: 30, ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Get.offNamed(RouteHelper.getProjectsRoute());
                                        },
                                          child: Icon(Icons.arrow_back_ios)),
                                         Spacer(),
                                         Icon(Icons.more_vert)
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                  Row(
                                    children: [
                                      Text("Projects ",style: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Padding(padding: EdgeInsets.only(right: 40,left: 30),
                                child:Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child:  new CircularPercentIndicator(
                                            radius: 65.0,
                                            animation: true,
                                            animationDuration: 1200,
                                            lineWidth: 12.0,
                                            percent: 0.7,
                                            circularStrokeCap: CircularStrokeCap.round,
                                            center: new Text(
                                              "70%",
                                              style:
                                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                            ),
                                            backgroundColor: Colors.black12,
                                            progressColor: Colors.green,
                                          ),

                                        ),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.2),
                                        Column(
                                          children: [
                                            Text("Team",style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize: 18),),


                                          ],
                                        ),


                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                    Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.05,
                                          width: MediaQuery.of(context).size.height*0.09,
                                          child:Center(
                                              child: Text("Open",style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),)),

                                          decoration: BoxDecoration(
                                            color: Colors.green.shade100,
                                            borderRadius: BorderRadius.circular(15),

                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                         height: MediaQuery.of(context).size.height*0.03,
                                          width: MediaQuery.of(context).size.height*0.05,
                                          child:Center(
                                              child: Icon(Icons.add,color: Colors.white,size: 18,)),

                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(10),

                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.05,
                                          width: MediaQuery.of(context).size.height*0.09,
                                          child:Center(
                                              child: Text("Done",style: TextStyle(fontSize: 12,color: Colors.black87),)),

                                          decoration: BoxDecoration(
                                            border:Border.all(color: Colors.grey.shade300),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),

                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                                ],
                              ),
                            ),
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
                            ),
                          ),
                          SizedBox(height: 5,),
                          TabBarWidgetPage(),





                        ],
                      )

                    ]
                ),
              ],
          ),
        ),

    );
  }
}
