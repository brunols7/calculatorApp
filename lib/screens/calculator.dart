import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keyboard.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget> [
          Display(memory.value),
          Keyboard(_onPressed),
        ]
      )
    );
  }
}