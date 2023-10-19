import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route/route_helper.dart';

class ProjectWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    print('media query');
    print (MediaQuery.of(context).size.width);
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width*0.95,
        child:   ListView.builder(
          itemCount:8,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
           title: InkWell(
                          onTap: (){
                            Get.offNamed(RouteHelper.getProjectsDetailsRoute());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Column(
                              children: [
                                Row(
    
                                  children: [
                                    SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
                                    SizedBox(width:MediaQuery.of(context).size.width*0.05 ,),
                                    Text("WordPress Theme Design",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Container(
                                      height:MediaQuery.of(context).size.height*0.03 ,
                                      width:MediaQuery.of(context).size.width*0.1,
                                      child:Center(
                                          child: Text("open",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)),
    
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
    
                                      ),
                                    ),
                                    SizedBox(width:MediaQuery.of(context).size.width*0.025 , ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width:MediaQuery.of(context).size.width*0.025 , ),
                                    Container(
                                      height:MediaQuery.of(context).size.height*0.025 ,
                                      width:MediaQuery.of(context).size.width*0.2 ,
                                      child:Center(
                                          child: Text("Wordpress",style: TextStyle(fontSize: 12,color: Colors.white,),)),
    
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade400,
                                        borderRadius: BorderRadius.circular(6),
    
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                 
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height*0.04 ,),
                                     Container(
                                      height:MediaQuery.of(context).size.height*0.015 ,
                                      width: MediaQuery.of(context).size.width*0.7 ,
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Row(
                                          children: [
                                            new LinearPercentIndicator(
                                              // width: MediaQuery.of(context).size.width - 150,
                                              width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width / 2.54),
                                              animation: true,
                                              lineHeight: 7.0,
                                              animationDuration: 4000,
                                              percent: 0.9,
                                              center: Text("",style: TextStyle(color: Colors.grey[700],fontSize: 10),),
                                              barRadius: const Radius.circular(5),
                                              progressColor: Colors.green.shade300,
                                              backgroundColor:Colors.grey[200] ,
                                            ),
                                         Text("90%",style: TextStyle(color:Colors.green,fontSize: 12))
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(0),
                                    
                                      ),
                                    ),
        
                                    SizedBox( height:MediaQuery.of(context).size.height*0.02),
                                    Row(
                                      children: [
                                        SizedBox( width:MediaQuery.of(context).size.width*0.05 ),
                                        Icon(Icons.date_range,size:12,color: Colors.black,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text("02/22/2023",style: TextStyle(fontSize: 12,color: Colors.black,),),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.3 ),
                                        Icon(Icons.date_range,size:12,color: Colors.red,),
                                        SizedBox( width:MediaQuery.of(context).size.width*0.02 ),
                                        Text("02/22/2023",style: TextStyle(fontSize: 12,color: Colors.red,),)
    
    
    
                                      ],
                                    )
                                  ],
                                ),
    
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
                        ),
            );
    
          
          }
         ),
           ),
    );
       }
        }