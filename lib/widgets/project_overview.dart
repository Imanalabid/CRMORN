import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../route/route_helper.dart';
class ProjectOverView extends StatefulWidget {
  const ProjectOverView({super.key});

  @override
  State<ProjectOverView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProjectOverView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Container(
                        height: MediaQuery.of(context).size.height*0.45,
                        width: MediaQuery.of(context).size.width*0.95,

                        child: Column(

                          children: [
                                    Row(
                                children: [
                                  SizedBox(height:MediaQuery.of(context).size.height*0.07,),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.06 ,),
                                  Icon(Icons.people_outline,color: Colors.green,size: MediaQuery.of(context).size.height*0.03,),
                                  SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                  InkWell(
                                      onTap: (){
                                        Get.offNamed(RouteHelper.getProjectsRoute());
                                      },
                                      child: Text("Projects Overview",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),))

                                ]
                            ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.02,),
        
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.15,
                                          width: MediaQuery.of(context).size.width*0.45,
        
                                          child: Padding(
                                            padding:  EdgeInsets.all(13),
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("27",style: TextStyle(color: Colors.white,fontSize: 22),),
                                                      Spacer(),
                                                      Container(
                                                        child: Icon(Icons.more_horiz),
                                                        height:MediaQuery.of(context).size.height*0.035,
                                                        width:MediaQuery.of(context).size.height*0.035,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(30),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  blurRadius: 10,
                                                                  spreadRadius: 7,
                                                                  offset: Offset(1, 1),
                                                                  color:Colors.blueAccent.withOpacity(0.2)
                                                              )
                                                            ]
        
                                                        ),
                                                      )
        
        
                                                    ],
                                                  ),
                                                  SizedBox(height:MediaQuery.of(context).size.height*0.002,),
                                                  Text("In Progress",style: TextStyle(color: Colors.white,fontSize: 18),),
                                                 SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.messenger_outline,color: Colors.white,size: 16,),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,
                                                      ),
                                                      Text("43 Comments",style:TextStyle(color:Colors.white,fontSize: 14))
                                                    ],
                                                  )
        
                                                ]
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.deepPurpleAccent.shade400,
                                              borderRadius: BorderRadius.circular(15),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    spreadRadius: 7,
                                                    offset: Offset(1, 1),
                                                    color:Colors.grey.withOpacity(0.2)
                                                )
                                              ]
                                          ),
                                        ),
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.15,
                                          width: MediaQuery.of(context).size.width*0.45,
        
                                          child: Padding(
                                            padding:  EdgeInsets.all(13),
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("08",style: TextStyle(color: Colors.white,fontSize: 22),),
                                                      Spacer(),
                                                      Container(
                                                        child: Icon(Icons.more_horiz),
                                                        height:MediaQuery.of(context).size.height*0.035,
                                                        width:MediaQuery.of(context).size.height*0.035,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(30),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  blurRadius: 10,
                                                                  spreadRadius: 7,
                                                                  offset: Offset(1, 1),
                                                                  color:Colors.teal.withOpacity(0.2)
                                                              )
                                                            ]
        
                                                        ),
                                                      )
        
        
                                                    ],
                                                  ),
                                                  SizedBox(height:MediaQuery.of(context).size.height*0.002,),
                                                  Text("Opened",style: TextStyle(color: Colors.white,fontSize: 18),),
                                                  SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.messenger_outline,color: Colors.white,size: 16,),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,
                                                      ),
                                                      Text("26 Comments",style:TextStyle(color:Colors.white,fontSize: 14))
                                                    ],
                                                  )
        
                                                ]
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.teal.shade400,
                                              borderRadius: BorderRadius.circular(15),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    spreadRadius: 7,
                                                    offset: Offset(1, 1),
                                                    color:Colors.grey.withOpacity(0.2)
                                                )
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.15,
                                          width: MediaQuery.of(context).size.width*0.45,
        
                                          child: Padding(
                                            padding:  EdgeInsets.all(13),
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("16",style: TextStyle(color: Colors.white,fontSize: 22),),
                                                      Spacer(),
                                                      Container(
                                                        child: Icon(Icons.more_horiz),
                                                        height:MediaQuery.of(context).size.height*0.035,
                                                        width:MediaQuery.of(context).size.height*0.035,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(30),
                                                         
                                                        ),
                                                      )
        
        
                                                    ],
                                                  ),
                                                  SizedBox(height:MediaQuery.of(context).size.height*0.002,),
                                                  Text("Closed",style: TextStyle(color: Colors.white,fontSize: 18),),
                                                  SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.messenger_outline,color: Colors.white,size: 16,),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,
                                                      ),
                                                      Text("31 Comments",style:TextStyle(color:Colors.white,fontSize: 14))
                                                    ],
                                                  )
        
                                                ]
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.yellow.shade800,
                                              borderRadius: BorderRadius.circular(15),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    spreadRadius: 7,
                                                    offset: Offset(1, 1),
                                                    color:Colors.grey.withOpacity(0.2)
                                                )
                                              ]
                                          ),
                                        ),
                                        SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.15,
                                          width: MediaQuery.of(context).size.width*0.45,
        
                                          child: Padding(
                                            padding:  EdgeInsets.all(13),
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("345",style: TextStyle(color: Colors.white,fontSize: 22),),
                                                      Spacer(),
                                                      Container(
                                                        child: Icon(Icons.more_horiz),
                                                        height:MediaQuery.of(context).size.height*0.035,
                                                        width:MediaQuery.of(context).size.height*0.035,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(30),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  blurRadius: 10,
                                                                  spreadRadius: 7,
                                                                  offset: Offset(1, 1),
                                                                  color:Colors.blueAccent.withOpacity(0.2)
                                                              )
                                                            ]
        
                                                        ),
                                                      )
        
        
                                                    ],
                                                  ),
                                                  SizedBox(height:MediaQuery.of(context).size.height*0.002,),
                                                  Text("Completed",style: TextStyle(color: Colors.white,fontSize: 18),),
                                                  SizedBox( height: MediaQuery.of(context).size.height*0.02,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.messenger_outline,color: Colors.white,size: 16,),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.02,
                                                      ),
                                                      Text("432 Comments",style:TextStyle(color:Colors.white,fontSize: 14))
                                                    ],
                                                  )
        
                                                ]
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.circular(15),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    spreadRadius: 7,
                                                    offset: Offset(1, 1),
                                                    color:Colors.grey.withOpacity(0.2)
                                                )
                                              ]
                                          ),
                                        ),
                                      ],
        
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.03,),
                                   




                          ],
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
    );
  }
}