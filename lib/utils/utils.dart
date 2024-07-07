import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 18,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 20,
    );
  }

  static void flushBarErrorMessages(String message , BuildContext context){

    showFlushbar(
        context: context,
        flushbar: Flushbar(
          backgroundColor: Colors.red.shade500,
          message: message,
          duration: Duration(seconds: 4),

          messageColor: Colors.white,
          // titleText: Text("Error Occured",style: TextStyle(color: Colors.white),),
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.easeOut,
          
          padding: EdgeInsets.all(20),
          positionOffset: 20,
          icon: Icon(Icons.error,size: 28,color: Colors.white,),

          flushbarPosition: FlushbarPosition.BOTTOM,
          borderColor: Colors.orange,
          // boxShadows: [
          //   BoxShadow(
          //     color: Colors.black,
          //     blurRadius: 0.6,
          //     spreadRadius: 0.9
          //   )
          // ],

          // showProgressIndicator: true,
          // progressIndicatorBackgroundColor: Colors.red,

          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          borderRadius: BorderRadius.circular(20),



        )..show(context)
    );

  }

  static snakBar(String message , BuildContext context){

    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        padding: EdgeInsets.all(20),
        elevation: 20,

      ),


    );
  }

  static void fieldFocusChange(BuildContext context , FocusNode current , FocusNode nextFocus){

    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);

  }
}