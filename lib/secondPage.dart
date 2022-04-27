import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({Key? key,required this.data}) : super(key: key);

  // const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second PAge"),),
      body: Center(
        child: Text(data,style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
      ),
    );
  }
}
