import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:K8s_Management/main.dart';
import 'package:K8s_Management/navigator.dart';

class ScaleInOut extends StatefulWidget {
  ScaleInOut({Key key}) : super(key: key);

  @override
  _ScaleInOutState createState() => _ScaleInOutState();
}

final _tagScaleControler = TextEditingController();
final _numScaleControler = TextEditingController();
var num;

class _ScaleInOutState extends State<ScaleInOut> {
  @override
  Widget build(BuildContext context) {

void execute(var svc,var subsvc,var tag,var num) async
{
  var url="http://Master_Ip/cgi-bin/main.py?service=$svc&subser=$subsvc&tag=$tag&num=$num";
  var response = await http.get(url);
   webdata = response.body;
   MyNavigator.goToShell(context);
  print("From server respond => $webdata");
}
    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    subseru,
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
                          controller: _tagScaleControler,
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
                               hintText: " mydeploy ",
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
                     child: Text("Number : ",
                          style:GoogleFonts.slackey(
                           color: Color(0xDAFFFFFF),
                           fontSize: 18,
                           decoration: TextDecoration.none
                          ),),),

                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.56,
                        height: MediaQuery.of(context).size.width*0.15,
                        child: TextField(
                          onChanged: (val)
                          {
                            num = val;
                          },
                          controller: _numScaleControler,
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
                               hintText: " 10 ",
                               hintStyle: GoogleFonts.slackey(
                                 fontSize: 20,
                                 color:Color(0x60FFFFFF)
                               ),

                        ),
                      ),
                      )],)),

                      Card(
                             margin: EdgeInsets.only(top: 20),
                            color: Color(0xFF7CAAF5),
                            child:
                            FlatButton(
                              onPressed: () 
                              {
                               _tagScaleControler.clear();
                               _numScaleControler.clear();
                                execute(mainseru,subseru,tag,num);
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
                      ],))
                      ),
          );
  }
}
