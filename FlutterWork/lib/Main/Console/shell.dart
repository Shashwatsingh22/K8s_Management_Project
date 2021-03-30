import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:progress_indicators/progress_indicators.dart';

class Shell extends StatefulWidget {
  Shell({Key key}) : super(key: key);


  @override
  _ShellState createState() => _ShellState();
}

//var output  =  new List() ;

List output = [null];

var outp;
var cmd;
int count=0;
int op=0;

class _ShellState extends State<Shell> {
  execute(var cmd) async
  {
    var url="http://13.232.160.12/cgi-bin/cmd.py?cmd=$cmd";
    var response = await http.get(url);
    setState(() {
      output[count] = response.body;
      output.add("");
      //output.add(response.body);
      // outp=response.body;
      count++;
    });
    print(outp);
  }
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
          backgroundColor: Colors.black87,
          actions: <Widget>[Icon(Icons.account_circle,
            size: 45,)],
        ),
        body :



        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20),
            color: Colors.black,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child:Column(children: [
                  for(int i=0;i<=count;i++)
                    (
                        Container(

                            child:


                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,

                                      child:
                                      Row( children: <Widget>[
                                        GlowingProgressIndicator(
                                          child:Text("[master@ ~]#  ",
                                            style:GoogleFonts.slackey(
                                              color: Color(0xFFFFFFFF),
                                              fontSize:15,
                                            ),),),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.65,


                                          child : TextField(
                                            onSubmitted: (value) => execute(value),
                                            autofocus: true,
                                            showCursor: true,
                                            cursorWidth: 2,
                                            cursorColor: Color(0xDAFFFFFF),
                                            style: TextStyle(
                                              height: 1,
                                              color: Color(0xDAFFFFFF),
                                              fontSize:20,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: " kubectl get pods ",
                                              hintStyle: TextStyle(
                                                  fontSize: 20,
                                                  color:Color(0x60FFFFFF)
                                              ),

                                            ),
                                          ),
                                        ),

                                      ],)
                                  ),

                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 2,0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(output[i] ?? "Output Will Come Soon !!",
                                      style: TextStyle(
                                        color:Color(0xA1FFFFFF),
                                        fontSize:15,
                                      ),
                                    ),
                                  )])


                        )

                    )
                ],)


            ))
    );
  }
}