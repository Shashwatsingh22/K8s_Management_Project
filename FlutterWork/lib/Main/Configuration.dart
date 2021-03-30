import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Configuration extends StatefulWidget {
  Configuration({Key key}) : super(key: key);

  @override
  _ConfigurationState createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Automation",
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
                        child:Text("Configuration",
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
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Cluster on Same Cloud PlateForm",
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
        onPressed:() =>{}
         ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*0.03,
         ),
         Container(
        alignment: Alignment.topLeft,
        child: FlatButton(
          child:  Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: MediaQuery.of(context).size.height*0.1,
          color: Color(0xFF3171D8),
        
        child: Container
        (
          child: Center(
            child: Text("Cluster on MultiCloud PlateForm",
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
        onPressed:() =>{}
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