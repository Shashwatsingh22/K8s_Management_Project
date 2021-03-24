import 'package:flutter/material.dart';
import 'Main/splash.dart';
import 'Main/home.dart';
import 'Main/Configuration.dart';

//---Global-Pages---
import 'package:K8s_Management/Main/Global/describe_delete.dart';
import 'package:K8s_Management/Main/Global/getByLabel.dart';
import 'package:K8s_Management/Main/Global/launch.dart';

//----Pod---Pages--
import 'package:K8s_Management/Main/Pod/podmain.dart';

//----Deployement-----
import 'package:K8s_Management/Main/Deploy/DeployMain.dart';
import 'package:K8s_Management/Main/Deploy/scale.dart';
import 'package:K8s_Management/Main/Deploy/updateVer.dart';

//----Service-----
import 'package:K8s_Management/Main/svc/svc_main.dart';
import 'package:K8s_Management/Main/svc/expose.dart';
import 'package:K8s_Management/Main/svc/describesvc.dart';

//---Secret Variable Page---
import 'package:K8s_Management/Main/Secret/secret.dart';

//---OutPut Screen-----
import 'package:K8s_Management/Main/Console/console.dart';

//-- Shell ---
import 'package:K8s_Management/Main/Console/shell.dart';

var webdata="";
var mainseru="";
var subseru="";
var tag="";
void main() {

 runApp(MaterialApp(
 initialRoute: "/",
 routes :{
//Root
 "/" : (context) => Splash(),
"/Home" : (BuildContext context) => Home(),

//Global Pages
"/Pod/Launch" : (BuildContext context) => LaunchPod(),
"/Pod/Delete" : (BuildContext context) => DeletePod(),
"/Pod/GetLabelPod" : (BuildContext context) => GetLabelPod(),

//Console and Shell
"/Home/shell" : (BuildContext context) => Console(),
"/Home/console" : (BuildContext context) => Shell(),


//Configuration
"/Home/Config" : (BuildContext context) => Configuration(),

//Pod
"/Home/Pod"  :  (BuildContext context) => PodMain(),

//Deploy
"/Home/Deploy" : (BuildContext context) => DeployMain(),
"/Deploy/scale" : (BuildContext context) => ScaleInOut(),
"/Deploy/update" : (BuildContext context) => UpdateVer(),

//Service
"/Home/svc" : (BuildContext context) => SvcMain(),
"/svc/expose" : (BuildContext context) => Expose(),
"/svc/describe" : (BuildContext context) => DescribeSVC(),

//Secret
"/Home/secret" : (BuildContext context) => Secret(),

 },
 debugShowCheckedModeBanner: false,
 )
 );
}
