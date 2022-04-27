import 'package:flutter/material.dart';

class DateTimePicker_ extends StatefulWidget {
  const DateTimePicker_({Key? key}) : super(key: key);

  @override
  State<DateTimePicker_> createState() => _DateTimePicker_State();
}

class _DateTimePicker_State extends State<DateTimePicker_> {

  DateTime currentDate = DateTime.now();

  Future<void> _selectedDate(BuildContext context) async{
    final DateTime? pickedDate = await showDatePicker(context: context, initialDate: currentDate, firstDate: DateTime(2015), lastDate: DateTime(2025));

    if (pickedDate != null && pickedDate != currentDate){
      setState(() {
        currentDate = pickedDate;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date & Time Picker'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(currentDate.toString()),
            RaisedButton(onPressed: () => _selectedDate(context),child: Text("Select Date"),)
          ],
        ),
      ),
    );
  }
}
