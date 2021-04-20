

import 'package:calculator_bottom_flutter_app/screens/add.dart';
import 'package:calculator_bottom_flutter_app/screens/div.dart';
import 'package:calculator_bottom_flutter_app/screens/mul.dart';
import 'package:calculator_bottom_flutter_app/screens/sub.dart';
import 'package:flutter/material.dart';

void main()=>runApp(CalculatorBottomNavigationBar());

class CalculatorBottomNavigationBar extends StatefulWidget {
  @override
  _CalculatorBottomNavigationBarState createState() => _CalculatorBottomNavigationBarState();
}

class _CalculatorBottomNavigationBarState extends State<CalculatorBottomNavigationBar> {
  
  int _mycurrentIndex=0;
  List mypages=[Add(),Sub(),Mul(),Div()];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(onTap: (index){
          setState(() {
            _mycurrentIndex=index;
          },);
        },
        backgroundColor: Colors.lightBlue,
          currentIndex: _mycurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add),backgroundColor: Colors.lightBlue,label: "ADD",),
            BottomNavigationBarItem(icon: Icon(Icons.indeterminate_check_box_outlined),backgroundColor: Colors.lightBlue,label: "SUB"),
            BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),backgroundColor: Colors.lightBlue,label: "MUL"),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_symbols),backgroundColor: Colors.lightBlue,label: "DIV"),
          ],
        ),
      ),
    );
  }
}
