import 'package:flutter/material.dart';

class RetroBoard extends StatefulWidget {
  RetroBoard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RetroBoardState createState() => _RetroBoardState();
}

class _RetroBoardState extends State<RetroBoard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Set the context of the retrospective here...'),
              )
            ],
          ),
          Divider(
            height: 20.0,
          ),
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
