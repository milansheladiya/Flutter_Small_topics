
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpJsonExample extends StatefulWidget {
  const HttpJsonExample(Key key) : super(key: key);

  @override
  State<HttpJsonExample> createState() => _HttpJsonExampleState();
}

class _HttpJsonExampleState extends State<HttpJsonExample> {
  late List data;
  String url = 'https://s3-us-west-2.amazonaws.com/appsdeveloperblog.com/tutorials/files/cats.json';
  List imagesURL = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDataFromApi();
  }

  Future<void> fetchDataFromApi() async {
    var jsonData = await http.get(Uri.parse(url),);
    var fetchData = jsonDecode(jsonData.body);
    setState(() {
      data = fetchData;
      data.forEach((element) {
        imagesURL.add(element['url']);
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HTTP Json Example'),),
      body: GridView.builder(
          gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        itemCount: imagesURL.length,
        itemBuilder: (BuildContext context, int index) {
            return Image.network(imagesURL[index]);
        },

      )
    );
  }
}
