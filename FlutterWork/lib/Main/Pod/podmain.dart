import 'package:K8s_Management/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:K8s_Management/main.dart';
import 'package:http/http.dart' as http;

class PodMain extends StatefulWidget {
  PodMain({Key key}) : super(key: key);

  @override
  _PodMainState createState() => _PodMainState();
}
class _PodMainState extends State<PodMain> {
  @override
  Widget build(BuildContext context) {

void execute(var svc,var subsvc) async
{
  var url="http://13.232.160.12/cgi-bin/main.py?service=$svc&subser=$subsvc";
  var response = await http.get(url);
  webdata = response.body;
   MyNavigator.goToShell(context);
  print("From server respond => $webdata");
}

    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Pod Resources",
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
            child: Text("Launch Pod",
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
        onPressed:(){
          mainseru="pod";
          subseru="launch";
          MyNavigator.goToLaunch(context);
        }),
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
          mainseru="pod";
          subseru="get_all";
          tag="";
          execute("pod","get_all");
        }
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
            child: Text("Delete Pod",
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
          mainseru="pod";
          subseru="delete";
          MyNavigator.goToPodDelete(context);
        }
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
            child: Text("Describe Pod",
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
          mainseru="pod";
          subseru="describe";
          MyNavigator.goToPodDelete(context);
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
            child: Text("Get Pods By Label Value",
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
          mainseru="pod";
          subseru="labelValue";
          MyNavigator.goToGetLabelPod(context);
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
           
        
       ],
     ),
    )
    );
  }
}