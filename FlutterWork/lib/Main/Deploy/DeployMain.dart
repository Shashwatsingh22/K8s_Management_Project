import 'package:K8s_Management/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:K8s_Management/main.dart';
import 'package:http/http.dart' as http;

class DeployMain extends StatefulWidget {
  DeployMain({Key key}) : super(key: key);

  @override
  _DeployMainState createState() => _DeployMainState();
}


class _DeployMainState extends State<DeployMain> {
  @override
  Widget build(BuildContext context) {

  void execute(var svc,var subsvc) async
{
  var url="http://Master_IP/cgi-bin/main.py?service=$svc&subser=$subsvc";
  var response = await http.get(url);
  webdata = response.body;
   MyNavigator.goToShell(context);
  print("From server respond => $webdata");
}

    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Deployment",
                                  style: GoogleFonts.abrilFatface(
                                    textStyle : TextStyle(
                                      color: Colors.white, 
                                    letterSpacing: 3,
                                    fontSize: 20),
                                        ), 
                                    ),
                        backgroundColor: Color(0xFF3171D8),
                        actions: <Widget>[Icon(Icons.account_circle,
                        size: 45,)], 
                      ), 
    body : Container(
      color: Color(0xFF7CAAF5),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget> [
         Container(
                        margin: EdgeInsets.all(20),
                        width:double.infinity,
                        child:Text("Resources",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                        )
                        )
                      ),

        Row(children: [ Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Create Deployment",
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
          mainseru="deployment";
          subseru="create";
          MyNavigator.goToLaunch(context);
        },
        ),
         ),
         
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
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
            child: Text("Get All",
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
          mainseru="deployment";
          subseru="get_all";
          tag="";
          execute(mainseru,subseru);
        },
        ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),
         ],),

         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),
         
      Row(children: [ Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Delete Deployment",
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
          mainseru="deployment";
          subseru="delete";
          MyNavigator.goToPodDelete(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
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
            child: Text("Describe Deployment",
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
          mainseru="deployment";
          subseru="describe";
          MyNavigator.goToPodDelete(context);
        },
        ),
         ),

         ],),
        
        SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),

         Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Get RC(Replication Controller) Detail",
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
          mainseru="deployment";
          subseru="get_rs";
          tag="";
          execute(mainseru,subseru);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),
          Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Get RS(Replica Set) Detail",
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
          mainseru="deployment";
          subseru="get_rc";
          tag="";
          execute(mainseru,subseru);
        },
         ),
         ),

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
            child: Text("scale_out",
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
          mainseru="deployment";
          subseru="scale_out";
          tag="";
          MyNavigator.goToScaleD(context);
        },
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
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
            child: Text("scale_in",
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
         /* mainseru="deployment";
          subseru="scale_out";
          tag="";
          MyNavigator.goToScaleD(context);
        */
        },
        ),
         ),
         ],),


         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),

         Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Update Version Of the Image",
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
          mainseru="deployement";
          subseru="update_image";
          MyNavigator.goToUpdate(context);
        }
         ),
         ),

         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),

         
       
       ],
     ),
    )
    );
  }
}
