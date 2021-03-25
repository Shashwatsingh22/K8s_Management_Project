import 'package:K8s_Management/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:K8s_Management/main.dart';

class SvcMain extends StatefulWidget {
  SvcMain({Key key}) : super(key: key);

  @override
  _SvcMainState createState() => _SvcMainState();
}

class _SvcMainState extends State<SvcMain> {
  @override
  Widget build(BuildContext context) {

void execute(var svc,var subsvc) async
{
  var url="http://master_ip/cgi-bin/main.py?service=$svc&subser=$subsvc";
  var response = await http.get(url);
  webdata = response.body;
   MyNavigator.goToShell(context);
  print("From server respond => $webdata");
}

    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Service",
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
            child: Text("Get All Svc",
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
          mainseru="svc";
          subseru="get";
          tag="";
          execute(mainseru,subseru);
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
            child: Text("Expose Deployement",
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
          mainseru="svc";
          subseru="exp_deploy";
          MyNavigator.goToSVCexpose(context);
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
            child: Text("Expose Pod",
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
          mainseru="svc";
          subseru="exp_pod";
          MyNavigator.goToSVCexpose(context);
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
            child: Text("Expose RC",
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
          mainseru="svc";
          subseru="exp_rc";
          MyNavigator.goToSVCexpose(context);
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
            child: Text("Describe SVC",
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
        onPressed: ()
        {
          mainseru="svc";
          subseru="des_svc";
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
       
       ],
     ),
    )
    );
  }
}
