import 'package:flutter/material.dart';

class TextField_ extends StatefulWidget {
  const TextField_({Key? key}) : super(key: key);

  @override
  State<TextField_> createState() => _TextField_State();
}

class _TextField_State extends State<TextField_> {

  final _text = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field"),),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _text,
              decoration: InputDecoration(
                  labelText: "enter name",
                  errorText: _validate ? 'Username Can\'t Be Empty' : null,
              ),
            ),

            RaisedButton(onPressed: (){
              setState(() {
                _text.text.isEmpty ? _validate = true : _validate = false;
              });


            },
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ],
        )
      ),
    );
  }
}
