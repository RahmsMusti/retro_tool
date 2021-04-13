import 'package:flutter/material.dart';
import 'package:retro_tool/retro_board.dart';

void main() => runApp(RetroTool());

class RetroTool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RetroBoard(title: 'Retro Tool Home Page'),
    );
  }
}
