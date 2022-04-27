import 'package:exam_demo/progressBarExample.dart';
import 'package:exam_demo/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:exam_demo/textbox.dart';
import 'package:exam_demo/bottomNavigationbar.dart';

import 'ImageView.dart';
import 'dateTimePicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Exam",
      // routes: {
      //   '/secondPage':(_) => SecondScreen(data: 'abc'),
      // },
      home: Scaffold(
        appBar: AppBar(title: Text("Exams"),),
        body: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {

  const FirstPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
                child: Text("Go To Second Page"),
                onPressed: (){
                  // Navigator.of(context).push(
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SecondScreen(data: "Hello I am from First Page"),),
                );
              // Navigator.of(context).pushNamed("/secondPage");
            }),
          ),

          RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ImageDemo(),),
            );
          },child: Text("Image View"),),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TextField_(),),
            );
          },child: Text("TextField"),),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProgressExample(),),
            );
          },child: Text("ProgreessExampleView"),),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => bottomNavigationBar()),
            );
          },child: Text("BottomNavigationBar"),),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DateTimePicker_()),
            );
          },child: Text("Date picker"),),
        ],
      ),
    );
  }
}



// simple navigation

// RaisedButton(
// child: Text("Go To Second Page"),
// onPressed: (){
// Navigator.of(context).push(
// MaterialPageRoute(builder: (context) => SecondScreen(data: "Hello I am from First Page"),),
// );
// }),