import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image View"),),
      body: Center(
        child: Image.asset('assets/images/background.jpeg'),
      ),
    );
  }
}
