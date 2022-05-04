
import 'package:flutter/material.dart';

class DialogBox_ extends StatefulWidget {
  const DialogBox_({Key? key}) : super(key: key);

  @override
  State<DialogBox_> createState() => _DialogBox_State();
}

class _DialogBox_State extends State<DialogBox_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog box '),backgroundColor: Colors.teal,),

      body: Center(
        child: FlatButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: Text('Confirm'),
          onPressed: (){
            _showDialog(context);
          },
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context) async {

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Alert Dialog'),
            content: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  Text('This is demo alert Dialog'),
                  Text("Would you like to approve this message")
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(onPressed: (){
                print("Confirmed");
                Navigator.of(context).pop();
              }, child: Text('Confirm')),

              TextButton(onPressed: (){
                print("Cancled");
                Navigator.of(context).pop();
              }, child: Text('Cancle'))
            ],
          );
        });

  }

}


