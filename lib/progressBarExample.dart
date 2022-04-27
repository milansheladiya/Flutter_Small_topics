import 'package:flutter/material.dart';

class ProgressExample extends StatefulWidget {
  const ProgressExample({Key? key}) : super(key: key);

  @override
  State<ProgressExample> createState() => _ProgressExampleState();
}

class _ProgressExampleState extends State<ProgressExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Progressbar"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
            ),
            CircularProgressIndicator(
                backgroundColor: Colors.orange,
                valueColor: AlwaysStoppedAnimation(Colors.redAccent),
                strokeWidth: 10
            ),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.orange,
              valueColor: AlwaysStoppedAnimation(Colors.redAccent),
              minHeight: 10,
            ),
          ],
        ),
      ),
    );
  }
}
