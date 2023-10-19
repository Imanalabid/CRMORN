import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../route/route_helper.dart';

class TeamWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width,
        child:   ListView.builder(
          itemCount:9,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding:  EdgeInsets.all(6.0),
              child: ListTile(
                
                       title: Container(
              
                       height:MediaQuery.of(context).size.height*0.15,
                       width:MediaQuery.of(context).size.width*0.8 ,
                   child: Row(
                    
                     children: [
                    Column( 
                      children: [
                        SizedBox(height:MediaQuery.of(context).size.height*0.06,),  
                    
                        Row(
                          children: [
                            
                    SizedBox( width:MediaQuery.of(context).size.width*0.02 ,),
                            CircleAvatar(
                                     radius: 25,
                                     backgroundImage: AssetImage('assets/images/1.png'),
                                     
                                   ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                    VerticalDivider(
                      color: Colors.black26,  //color of divider
                      width: 1, //width space of divider
                      thickness: 1, //thickness of divier line
                      indent: 8, //Spacing at the top of divider.
                      endIndent: 8, //Spacing at the bottom of divider.
                    ),
                    SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                                      
                       Column(
                         children: [
                             SizedBox(width:MediaQuery.of(context).size.width*0.03 ,),
                             SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                             Text("John Smith ",style: TextStyle(fontSize: 18),),
                       SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                         Text("mail@mail.com",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,),),
              
                       SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
            
                         Text("+905",style: TextStyle(color:Colors.black54,fontSize: 13 ),)
                 
                         ],
                       ),
                    Spacer(),
                      Column(
                        children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.055,),  
                          Icon(Icons.remove_circle,color: Colors.red,)
                        ],
                      ),
                        SizedBox( width:MediaQuery.of(context).size.width*0.03 ,),
                     
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
           decoration: BoxDecoration(
            color:Colors.grey.shade100,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
           ),
           
           ),
    );
       }
}