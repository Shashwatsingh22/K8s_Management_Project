import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescribeSVC extends StatefulWidget {
  DescribeSVC({Key key}) : super(key: key);

  @override
  _DescribeSVCState createState() => _DescribeSVCState();
}

final _tagSVCControler = TextEditingController();

class _DescribeSVCState extends State<DescribeSVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
                        title: Text(
                                    "Delete / Describe",
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

          child: Column(
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
                          controller: _tagSVCControler,
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
                               hintText: " mypod ",
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
                               // Execute(method,large);
                                //large.clear();
                                //count=1;
                                //str="Give Machine $count Detail's";
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
                      

                      ]),
                      ],)
                      ),
          );
  }
}