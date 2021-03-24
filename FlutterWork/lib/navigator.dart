import 'package:flutter/material.dart';

class MyNavigator {

  static void goToRoot(BuildContext context) {
    Navigator.pushNamed(context, "/");
  }

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context,"/Home");
  } 
   static void goToConfig(BuildContext context) {
    Navigator.pushNamed(context,"/Home/Config");
  }

  static void goToPodMain(BuildContext context) {
    Navigator.pushNamed(context,"/Home/Pod");
  }

  static void goToLaunch(BuildContext context) {
    Navigator.pushNamed(context,"/Pod/Launch");
  }

  static void goToPodDelete(BuildContext context) {
    Navigator.pushNamed(context,"/Pod/Delete");
  }

  static void goToGetLabelPod(BuildContext context) {
    Navigator.pushNamed(context,"/Pod/GetLabelPod");
  }
   
  static void goToGetDmain(BuildContext context) {
    Navigator.pushNamed(context,"/Home/Deploy");
  }
  
  
  static void goToScaleD(BuildContext context) {
    Navigator.pushNamed(context,"/Deploy/scale");
  }

  static void goToUpdate(BuildContext context) {
    Navigator.pushNamed(context,"/Deploy/update");
  }

  static void goToShell(BuildContext context) {
    Navigator.pushNamed(context,"/Home/shell");
  }

  static void goToSVCmain(BuildContext context) {
    Navigator.pushNamed(context,"/Home/svc");
  }

  static void goToSVCexpose(BuildContext context) {
    Navigator.pushNamed(context,"/svc/expose");
  }
   
  static void goToSVCDescribe(BuildContext context) {
    Navigator.pushNamed(context,"/svc/describe");
  } 
  
  static void goToshell1(BuildContext context) {
    Navigator.pushNamed(context,"/Home/console");
  } 
  
  static void goToSecret(BuildContext context) {
    Navigator.pushNamed(context,"/Home/secret");
  } 
  
}