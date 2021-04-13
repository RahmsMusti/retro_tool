import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RetroBoard extends StatefulWidget {
  RetroBoard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RetroBoardState createState() => _RetroBoardState();
}

class _RetroBoardState extends State<RetroBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Set the context of the retrospective here...'),
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                CupertinoIcons.eye,
                color: Colors.grey,
                size: 20.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
              DropdownButton<String>(
                items: <String>[
                  'Sort by order',
                  'Sort by date',
                  'Sort by votes',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              )
            ],
          ),
          Divider(
            color: Colors.green,
            thickness: 3.0,
          ),
        ],
      ),
    );
  }
}
