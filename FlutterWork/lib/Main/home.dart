import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:K8s_Management/navigator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:K8s_Management/main.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Home",
                                  style: GoogleFonts.abrilFatface(
                                    textStyle : TextStyle(
                                      color: Colors.white, 
                                    letterSpacing: 3,
                                    fontSize: 20),
                                        ), 
                                    ),
                        backgroundColor: Colors.black87,
                        actions: <Widget>[Icon(Icons.account_circle,
                        size: 45,)], 
                      ), 
    body : Container(
      color: Colors.black,
      child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
      child : Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget> [
         
         Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.5,
            decoration: BoxDecoration(
                      image : DecorationImage(
                        fit: BoxFit.scaleDown,
                        image:AssetImage("assets/main.png"))
                    ),
           ),
           Container(
                      height: MediaQuery.of(context).size.height*0.2,
                        width:MediaQuery.of(context).size.width,
                       color: Color(0x2DFFFFFF),
                        margin: EdgeInsets.fromLTRB(20,0,20,20),
                        child:Center(child:Text(
                          "Making it more Easier, Faster and Affordable for You, we manage your Cluster in a Simpler way.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 1,
                          
                          )))),
           
         Container(
                        margin: EdgeInsets.all(20),
                        width:MediaQuery.of(context).size.width,
                        child:Text("Automation",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                        )
                        )
                      ),

        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: MediaQuery.of(context).size.height*0.12,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Configuration of MultiNode Cluster On Cloud",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => MyNavigator.goToConfig(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),
         
         
         Container(
                        margin: EdgeInsets.all(20),
                        width:double.infinity,
                        child:Text("Kubernetes Service",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                          
                        )
                        )
                      ),

        Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Pod",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() =>MyNavigator.goToPodMain(context)
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Deployement",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => MyNavigator.goToGetDmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
        ],),

        SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),

        Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Secret",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:()
        {
          mainseru="secret";
          MyNavigator.goToSecret(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Service",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => MyNavigator.goToSVCmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
        ],),

        SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),


          Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("NameSpace",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:()
        {
          //mainseru="secret";
          //MyNavigator.goToSecret(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Storage",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => {}//MyNavigator.goToSVCmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
        ],),

SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),



Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("MultiContainer Pod",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:()
        {
        //  mainseru="secret";
         // MyNavigator.goToSecret(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text(" ClusterRole (IAM)",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => {}//MyNavigator.goToSVCmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
        ],),

SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),



Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("DemonSet",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:()
        {
          //mainseru="secret";
          //MyNavigator.goToSecret(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text(" Package Manager (Helm)",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() => MyNavigator.goToSVCmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
        ],),

SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),

        Container(
                        margin: EdgeInsets.all(20),
                        width:double.infinity,
                        child:Text("Get Shell",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                                                  )
                        )
                      ),

Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Master",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() =>MyNavigator.goToshell1(context),
         ),
         ),
 
 
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (   
          child: Center(
            child: Text("Container",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:() =>{}// MyNavigator.goToSVCmain(context),
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),

]),

SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),

Container(
                        margin: EdgeInsets.all(20),
                        width:double.infinity,
                        child:Text("Image Creater Docker",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                                                  )
                        )
                      ),

Row(children: [
        Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text(" Create Image ",
               style: TextStyle(
                 color: Colors.white.withOpacity(0.8),
                 decoration: TextDecoration.none,
                 fontWeight: FontWeight.w600,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,),
          ),   
        ),
        ),
        onPressed:()=>{} //=>MyNavigator.goToshell1(context),
         ),
         ),
 
 
         SizedBox(
           height: MediaQuery.of(context).size.height*0.05,
         ),
         
        
]),
SizedBox(
           height: MediaQuery.of(context).size.height*0.2,
         ),

       ],
     ),
    )
       )   );
  }
}