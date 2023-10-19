import 'package:crm/route/route_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          SizedBox(height:MediaQuery.of(context).size.height*0.07,),
          Container(
            height: MediaQuery.of(context).size.height*0.18,
            width: MediaQuery.of(context).size.width*0.6,
          
            child: Image(image: AssetImage("assets/images/logo.png"),),
          ),
           SizedBox(height:MediaQuery.of(context).size.height*0.12,),
        Text("Login ",style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),),
           SizedBox(height:MediaQuery.of(context).size.height*0.09,),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.height*0.55,
                                  decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            offset: Offset(1, 1),
                                            color:Colors.grey.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: TextField(
                                    controller: _phoneController,
                                    decoration: InputDecoration(
                                        hintText: "write your e-mail",
                                        prefixIcon: Icon(Icons.email_outlined, color:Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color:Colors.white,
                                                width: 1.0
                                            )
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color:Colors.white,
                                                width: 1.0
                                            )
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        )
                                    ),
                                  ),
                                ),
           ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                 height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.height*0.55,
                                  decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                            offset: Offset(1, 1),
                                            color:Colors.grey.withOpacity(0.2)
                                        )
                                      ]
                                  ),
                                  child: TextField(
                                    controller: _passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "password",
                                        prefixIcon: Icon(Icons.password, color:Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color:Colors.white,
                                                width: 1.0
                                            )
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color:Colors.white,
                                                width: 1.0
                                            )
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        )
                                    ),
                                  ),
                                ),
            ),
           
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: InkWell(
                onTap: (){
                  Get.toNamed(RouteHelper.initial);
                },
                 child: Container(
                              width:MediaQuery.of(context).size.width*0.45,
                              height: MediaQuery.of(context).size.height*0.06,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child:Center(
                                child: Text("Sign in",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),)
                            
                    
                               
                              ),
                            ),
               ),
             ),
          
          
          
        ]),
      
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/bbg.png"),
          fit: BoxFit.cover),
        ),
      ),
    )
      
      
    );
  }
  
  
}