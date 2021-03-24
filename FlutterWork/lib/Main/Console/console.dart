import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:K8s_Management/main.dart';

class Console extends StatefulWidget {
  Console({Key key}) : super(key: key);

  @override
  _ConsoleState createState() => _ConsoleState();
}


class _ConsoleState extends State<Console> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Shell",
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
          
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black,
                        child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child:Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: 
                                 Row( children: <Widget>[
                              GlowingProgressIndicator(
                                    child:Text("[root@localhost ~]# ",
                                  style:GoogleFonts.slackey(
                                  color: Color(0xFFFFFFFF),
                                  fontSize:15,
                                  ),),),
                                  Container(
                               width: MediaQuery.of(context).size.width*0.45,
                               child:Text(subseru+" "+mainseru+" "+tag ,
                                  style:GoogleFonts.slackey(
                                  color: Color(0xFFFFFFFF),
                                  fontSize:15,
                                  ),)
                             ),

                             ],)),
                             
                               Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 2,0),
                          width: MediaQuery.of(context).size.width,
                        child: Text(webdata ?? "Output Will Come Soon !!",
                        style: TextStyle(
                          color:Color(0xA1FFFFFF),
                          fontSize:15,
                        ),
                        ),
                        )])),
                        ))
    );
  }
}