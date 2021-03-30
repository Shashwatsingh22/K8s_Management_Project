import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:K8s_Management/main.dart';
import 'package:http/http.dart' as http;
import 'package:K8s_Management/navigator.dart';

class Expose extends StatefulWidget {
  Expose({Key key}) : super(key: key);

  @override
  _ExposeState createState() => _ExposeState();
}

var port;
var type;

final _tagExposeControler = TextEditingController();
final _tagPortControler = TextEditingController();
final _tagTypeControler = TextEditingController();


class _ExposeState extends State<Expose> {
  @override
  Widget build(BuildContext context) {

void execute(var svc,var subsvc,var tag,var port,var type) async
{
  var url="http://13.232.160.12/cgi-bin/main.py?service=$svc&subser=$subsvc&tag=$tag&app_port=$port&typeP=$type";
  var response = await http.get(url);
   webdata = response.body;
   MyNavigator.goToShell(context);
  print("From server respond => $webdata");
}

    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Expose",
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
          height: MediaQuery.of(context).size.height,
           child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child:Column(
           children: <Widget>[
           
            Column(
                   children: <Widget>[

                   Container(
                        margin: EdgeInsets.all(30),
                        width:double.infinity,
                        child:Text("Enter Detail",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1,
                        )
                        )
                      ),


                  Container
                  (
                    margin: EdgeInsets.only(left: 25),
                    child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("Tag : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.68,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          onChanged: (val)
                          {
                            tag=val;
                          },
                          controller: _tagExposeControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: " myone ",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )],)),

                      Container
                  (
                    margin: EdgeInsets.only(left: 25),
                    child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("App Port Num : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          onChanged: (val)
                          {
                            port=val;
                          },
                          controller: _tagPortControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: " 8080 ",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )],)),

                    Container(
                      margin: EdgeInsets.fromLTRB(10,40,0,20),
                     child: Text("Type Of Expose : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.68,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          onChanged: (val)
                          {
                            type=val;
                          },
                          controller: _tagTypeControler,
                           autofocus: true,
                           showCursor: true,
                           cursorWidth: 2,
                           cursorColor: Color(0xDAFFFFFF),
                           style: GoogleFonts.slackey(
                             height: 1,
                             color: Color(0xDAFFFFFF),
                             fontSize:20, 
                           ),
                           decoration: InputDecoration(
                            border:
                             OutlineInputBorder(
                              borderRadius:BorderRadius.circular(40),
                               ),
                               hintText: " NodePort ",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      ),

                      Card(
                             margin: EdgeInsets.only(top: 10),
                            color: Color(0xFF7CAAF5),
                            child:
                            FlatButton(
                              onPressed: () 
                              {
                              _tagExposeControler.clear();
                              _tagPortControler.clear();
                              _tagTypeControler.clear();
                              execute(mainseru,subseru,tag,port,type);
                              },
                            child: Container(
                              width: 120,
                              height:45,
                              
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                               
                                border: Border.all(
                                  width:2,
                                ),  
                                
                              ),
                              child: Center (child: Text("Execute",
                          style:GoogleFonts.slackey(
                           color: Colors.white,
                           fontSize: 20,
                          ),),
                            ))
                          )
                          ),

                           SizedBox(
           height: MediaQuery.of(context).size.height*0.186,
         ),
                      

                      ]), 
                      ],)
                      ),              
    ));
  }
}