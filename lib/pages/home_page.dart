

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _dialogAndroid(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Logout"),
            content: Text("Are you sure you want to logout"),
            actions: [
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),

              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text("Confirm"),
              ),
            ],
          );
        },
    );
  }

  _dialogIOS(){
showDialog(
    context: context,
    builder:(BuildContext context){
      return CupertinoAlertDialog(
        title: Text("Logout"),
        content: Text("Are you sure you want to logout"),
        actions: [

          CupertinoDialogAction(
           isDefaultAction: true,
            onPressed: (){
              Navigator.of(context).pop();
            },
              child: Text("Cancel"),
          ),

          CupertinoDialogAction(
            textStyle: TextStyle(color: Colors.red),
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text("Confirm"),
          )

        ],
      );
}

);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open a dialog"),
        backgroundColor: Colors.blue,
      ),

      body: Center( 
        child: MaterialButton(
          color: Colors.blue,
          onPressed: (){
            if(Platform.isAndroid){
              // _dialogIOS();
              _dialogAndroid();
            }else if(Platform.isIOS){
              _dialogIOS();
            }
          },
          child: Text("Open dialog"),
        ) ,
      ),
    );
  }
}
