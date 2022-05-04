
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReadJsonFile extends StatefulWidget {
  const ReadJsonFile({Key? key}) : super(key: key);

  @override
  State<ReadJsonFile> createState() => _ReadJsonFileState();
}

class _ReadJsonFileState extends State<ReadJsonFile> {

  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/jsonfile.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read JSON"),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(onPressed: readJson, child: Text("Load Json Data")),
            _items.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: Text(_items[index]["id"]),
                      title: Text(_items[index]["name"]),
                      subtitle: Text(_items[index]["description"]),
                    ),
                  );
                },
              ),
            )
                : Container()

          ],
        ),
      )
      );
  }
}
